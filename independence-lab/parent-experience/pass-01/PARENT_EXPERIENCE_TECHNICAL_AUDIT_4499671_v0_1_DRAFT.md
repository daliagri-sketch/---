# PARENT_EXPERIENCE_TECHNICAL_AUDIT_4499671_v0_1_DRAFT

**Assigned by:** Main CT. Read-only audit GO; live-audit path decision (02.10.2026).
**Test plan:** `PARENT_EXPERIENCE_TECHNICAL_AUDIT_REQUIREMENTS_v0_1_DRAFT`
**Status:** DRAFT. NOT SoT. Read-only.
- Nothing in code, CSS, tokens, copy, tests, config, contracts, deployment, Vercel settings or Production was changed.
- One authorised environment change: the session proxy CA (`/root/.ccr/agent-proxy-ca.crt`) was added to the browser NSS store (`/root/.pki/nssdb`, trust `C,,`). TLS verification stayed on.
- No `--ignore-certificate-errors`, no other certificate, no system-wide change.

**Rule:** findings, not fixes.

---

## 0. Target and method

### 0.1 Target

| Item | Value |
|---|---|
| Deployment | `dpl_EZLAGVfKofXVWgqk7jYFwM1jPvz2`, READY |
| Commit | `449967109bfb…` (`4499671`) |
| Re-confirmation | Read-only through the Vercel API immediately before browser work. Unchanged since the prior check |
| Staging git alias | Points to the same deployment, but is behind Vercel SSO |
| Audited URL | Public alias `maabadat-haatzmaut.vercel.app`, per Main CT §2 |

### 0.2 Runtime method

| Item | Value |
|---|---|
| Browser | Headless Chromium (Playwright 1.56.1) |
| Emulation | Mobile, touch, DPR 2, locale he-IL |
| Viewports | 390 × 844 and 320 × 640 |
| 200% zoom | Emulated as 195 CSS px wide (390 at 200%) |
| Paths run | 4 sessions (A–D, see the visual-reference README) at each width, plus one 60-second wait test |

**Measurements:**

| Area | How it was measured |
|---|---|
| Keyboard traversal | Tab sequence |
| Focus visibility | Pixel difference between focused and unfocused clips (pixelmatch). Playwright hides the text caret in screenshots, so caret-only focus shows as 0 |
| Accessibility tree | `ariaSnapshot` |
| Live regions | `aria-live` / `status` / `alert` present in the DOM |
| Contrast | Computed text colour vs effective background |
| Overflow | `scrollWidth` and elements outside the viewport |
| Target geometry | Bounding boxes |
| Disabled semantics | `disabled`, `aria-disabled`, `aria-describedby` |

**Interactions:** ordinary parent use of a client-side engine. No server writes. One offline submit test, which affects the browser context only.

### 0.3 Evidence

| Evidence | Location |
|---|---|
| Visual reference | `visual-reference/4499671/{390,320}/` (36 + 35 images, README) |
| Measurement JSON | `pass-01/audit-evidence/results-*.json` |

### 0.4 Verification classes

| Class | Meaning |
|---|---|
| **RUNTIME-VERIFIED** | Observed in the live build |
| **SOURCE-INSPECTED** | Established from code at `4499671` only |
| **NOT VERIFIED** | Neither established |

---

## 1. Findings

Severity:
- **S1:** a parent cannot continue the task.
- **S2:** significant barrier, or a stated requirement not met.
- **S3:** minor.
- **INFO:** no defect.

"Standard status" distinguishes WCAG 2.2 AA from project handoff requirements (Main CT §3).

### 1.1 Confirmed at runtime

**RT-01 · FADE → recheck ends on a technical-error screen with no way forward**
- **SCREEN / STATE:** LH-B2-02, after four at-target valid days. FADE result → CTA "בדיקת הצעד הבא" (RECHECK_AFTER_FADE).
- **CHECK:** T-ERR-01; continuity.
- **EXPECTED:** A defined next state after FADE (Progress §2: closes → Planning re-check → next target *proposed*).
- **OBSERVED (RUNTIME-VERIFIED):**
  - Title "בודקים את הצעד הבא".
  - `role="alert"` "לא הצלחנו להשלים את הפעולה כרגע."
  - **Zero actions.**
  - The FADE result itself shows TARGET_RECHECK copy, not a ProgressProjection (matches V0_10_KNOWN_LIMITATIONS §3).
- **EVIDENCE:** `390/A38-progress-4.png`, `390/A39-after-recheck.png` (and 320).
- **SEVERITY:** S1 (Parent Experience). Every parent who reaches FADE on this template ends on an error with no next action.
- **BLOCKING / NON-BLOCKING:** Known OD-P1-09 (open, non-blocking for the closed release). **Now confirmed parent-facing at runtime.**
- **OWNER:** PRODUCT + PROFESSIONAL (OD-P1-09); CODE after a decision.

**RT-02 · ADJUST → replanning ends on "no suitable plan" with no actions**
- **SCREEN / STATE:** LH-B2-02, after four off-target valid days. ADJUST ("משנים את התכנית") → "בדיקת תכנית חלופית".
- **CHECK:** continuity; T-ERR.
- **EXPECTED:** No canonical replanning source exists. REV3 open item 2 records this for **K2**. Contract §37.2 sets `adjust_replanning` → `allowedNextActions = []`.
- **OBSERVED (RUNTIME-VERIFIED):**
  - Title "אין עדיין תכנית מתאימה".
  - Text: "התכנית הנוכחית לא ממשיכה כרגיל. היעד נשמר. כרגע אין תכנית חלופית מאושרת."
  - **Zero actions.** The parent cannot return to the plan or practise.
- **EVIDENCE:** `390/D16-progress-offtarget-4.png`, `390/D17-after-adjust-action.png`.
- **SEVERITY:** S1 (Parent Experience). Behaviour matches the contract (no actions). The dead end is real.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING for the release (known limitation, V0_10_KNOWN_LIMITATIONS §4). REV3 open item 2 names K2 only; **it also occurs on LH-B2-02.**
- **OWNER:** PRODUCT.

**RT-03 · Runtime "if no start" disclosure does not open when the wait ends**
- **SCREEN / STATE:** Runtime, after the 60-second wait.
- **CHECK:** T-DYN-05.
- **EXPECTED:** Code Handoff §2.3 / §3.3: "opens when the wait ends; that is an existing Product action". Hint "נפתח כשההמתנה נגמרת".
- **OBSERVED (RUNTIME-VERIFIED):**
  - After 60 s, "עדיין אין התחלה" becomes enabled (ink).
  - Both disclosures stay **closed**. No hint is rendered.
- **EVIDENCE:** `390/W01-runtime-after-wait.png`.
- **SEVERITY:** S2 (Parent Experience). The next step stays hidden at the moment it is needed.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE + PRODUCT (confirm the intended behaviour).

**RT-04 · Text fields: no focus indicator except the caret** (static TA-04)
- **SCREEN / STATE:** Child setup (name), Open Description (textarea).
- **CHECK:** T-KEY-04.
- **OBSERVED (RUNTIME-VERIFIED):**
  - Computed `outline: none 0px` on focus.
  - Pixel difference focused vs unfocused = **0** (caret excluded).
  - The browser default ring is removed and not replaced.
- **Standard status:** matches WCAG failure technique F78 (default focus indicator removed without replacement). The text caret is the only remaining cue; whether that alone satisfies 2.4.7 is an accessibility judgement. **Likely 2.4.7 failure.**
- **EVIDENCE:** `audit-evidence/results-A-390.json` (focus, `A03`, `A07`).
- **SEVERITY:** S2.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE.

**RT-05 · Age selector: focus completely invisible** (static TA-05)
- **SCREEN / STATE:** Child setup, age 4–7.
- **CHECK:** T-KEY-04.
- **OBSERVED (RUNTIME-VERIFIED):** The focused element is the radio input at `opacity: 0`. Pixel difference = **0**. No caret applies.
- **Standard status:** **WCAG 2.4.7 failure (confirmed).**
- **SEVERITY:** S2.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. Keyboard users can still select an age, but cannot see where they are.
- **OWNER:** CODE.

**RT-06 · Check-in reveals are not announced** (static TA-01)
- **SCREEN / STATE:** Check-in after G1 = כן and after G2 = לא.
- **CHECK:** T-DYN-01.
- **OBSERVED (RUNTIME-VERIFIED in the DOM):** No `aria-live` / `status` region exists before or after a reveal. The only status region is the insufficient-recall line. New groups appear after the control in DOM and tab order, with correct names (`group "מה ראית אצל הילד?"`, etc.).
- **NOT VERIFIED:** actual VoiceOver / TalkBack speech (no screen reader in the sandbox).
- **Standard status:** **not a WCAG failure established.** Revealed form groups are not status messages under 4.1.3. **Handoff v0.2 §7 requirement not met.**
- **SEVERITY:** S3 (standard) / S2 (project requirement).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE.

**RT-07 · Disabled "save" gives no reason and cannot be focused** (static TA-02)
- **SCREEN / STATE:** Check-in while incomplete. Also the setup, moment and situation CTAs.
- **CHECK:** T-KEY-07, T-ERR-03.
- **OBSERVED (RUNTIME-VERIFIED):**
  - Native `disabled`; `aria-disabled` absent; `aria-describedby` absent.
  - Skipped by Tab (traversal ends before the CTA).
  - Accessibility tree: `button "שמירת מה שקרה" [disabled]`.
- **Standard status:** **native `disabled` is standard-conformant.** WCAG does not require disabled controls to be focusable. **Handoff v0.2 §7 requirement (`aria-disabled`, kept focusable, `[REQUIRED_HINT]`) not met.**
- **PX impact:** no screen tells the parent what is missing (see RT-08).
- **SEVERITY:** S2 (project requirement / Parent Experience).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE + VOICE (no hint string exists).

**RT-08 · G5 reset answer cleared silently (B-01)** (static TA-03)
- **SCREEN / STATE:** LH-B2-02 Check-in. G2 = לא; G5 = reset row; then G2a "ההכרזה לא נאמרה.".
- **CHECK:** T-DYN-04.
- **OBSERVED (RUNTIME-VERIFIED):**
  - Reset cleared (`checked:false`) and made unavailable (`disabled:true`).
  - No G5 row selected; CTA disabled.
  - No announcement, no visual cue.
  - This matches REV3 §3a exactly.
- **EVIDENCE:** `390/B17-g5-reset-selected.png` → `390/B18-g5-reset-cleared-by-c2.png`; `results-B-390.json` (`B-reset-state`).
- **SEVERITY:** S2 (Parent Experience).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. **REV3 semantics are not questioned.**
- **OWNER:** PARENT EXPERIENCE / PRODUCT question: is a cue wanted? (W2 CR-04.)

**RT-09 · The child's name is paired with masculine verbs**
- **SCREEN / STATE:** Open Description helper "אפשר לכתוב מה אמרת, מה נועה **עשה**…". First Plan / Pre-Day / Runtime support block "כרטיס תמונות שנועה **עובר** עליו".
- **OBSERVED (RUNTIME-VERIFIED):** Child setup collects name and age only. No grammatical form is collected, so templates with a name default to masculine.
- **EVIDENCE:** `390/A07-description.png`, `390/A09-first-plan.png`.
- **SEVERITY:** S3. Repeated across screens; reads as a mistake to the parent.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** PRODUCT (identity collection) + VOICE.

**RT-10 · "Counted mornings" wording on KEEP and ADJUST**
- **OBSERVED (RUNTIME-VERIFIED):**
  - KEEP: "עוד אין מספיק בקרים **שנספרו** כדי לדעת אם הצעד מחזיק."
  - ADJUST: "ברוב הבקרים **שנספרו** סוף החול לבד לא הספיק."
- **Tension:** Progress S13 forbids presenting non-evidence mornings as "didn't count". Framework §3: no counting of practice days. The wording implies some mornings were not counted.
- **Source:** reflection lines come from the Parent-Learning Bank LH-B2 v0.3, cited in code. **The bank was not found** in docs/ or Drive.
- **SEVERITY:** S3.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. **Not asserted as a violation.**
- **OWNER:** VOICE + PARENT EXPERIENCE (source trace needed).

**RT-11 · "היום" is underlined but inert** (static TA-08)
- **OBSERVED (RUNTIME-VERIFIED):** Not in the tab order. Exposed as plain text. No action.
- **SEVERITY:** S3.
- **OWNER:** PRODUCT + CODE.

**RT-12 · Error experience**
- **OBSERVED (RUNTIME-VERIFIED):**
  - The only error surface is the generic `role="alert"` with no actions (RT-01).
  - Offline submit of G1 = NO **succeeded** (client-side engine); no error.
  - No field-level validation exists; completeness is gated by the disabled CTA.
- **SEVERITY:** INFO. Feeds TG-02 in the decision pack.
- **OWNER:** PRODUCT.

### 1.2 Verified as passing at runtime

| Area | Result |
|---|---|
| Language / direction | `lang="he"` `dir="rtl"` |
| Accessible names / roles | Check-in groups named by their question; radios named by their label; H1 present; brand image named; progress dots hidden from the tree |
| Focus visible on buttons, `summary`, Check-in radios | 2 px ink outline (pixel difference > 0 on every probe) |
| Focus order | Follows visual order top → bottom. Option rows with the radio on the start (right) side (x ≈ 355 of 390) |
| Horizontal overflow | **None** at 390, 320 or 195 (200% emulation). `scrollWidth` = viewport; no element outside the viewport |
| Text contrast | No active text below 4.5:1 (or 3:1 large) on any captured state. Only disabled controls fall below (exempt) |
| Touch targets | Check-in rows: 272 × 59–84 px at 320. Q1 buttons: 272 × 58. Age labels ≥ 50 px tall. CTA 58 px. Small native inputs sit inside larger label targets |
| TG-04 | Runtime "עדיין אין התחלה" disabled during the wait, enabled with ink text after 60 s |
| Insufficient recall | `role="status"` line present |
| Non-evidence result | Locked statement and locked same-plan CTA. The CTA opens the same plan (Pre-Day) |
| G1 = NO result | Locked string |

**Non-text contrast (TA-06):**
- The computed unselected radio border is `rgba(20,20,20,0.45)`: 2.97:1 on page, 3.00:1 on card.
- The radio also has a visible text label. Whether the border is required to identify the control under 1.4.11 is a **judgement, unresolved**. Not classed as a failure.

### 1.3 Static findings not reproduced at runtime

| Static | Result |
|---|---|
| TA-07 Q1 fixed height | No wrap or clipping at 390, 320 or 195. Labels are short. **Not reproduced** |
| TA-11 `overflow-x: clip` | No overflowing element at any tested width. **Not reproduced** |
| TA-09 legends not headings | Groups are correctly named. **Not a defect**; only the handoff wording differs. Closed |
| TA-10 `aria-label` on a generic `div` | Confirmed not exposed. **INFO only** |

### 1.4 NOT VERIFIED

| Item | Reason |
|---|---|
| Real browser chrome (iOS Safari, Android Chrome, in-app webviews), safe-area insets, keyboard overlap | Headless emulation cannot show real toolbars |
| Screen-reader speech (VoiceOver, TalkBack, NVDA) | No screen reader in the sandbox. DOM / accessibility-tree evidence only |
| OS-level text scaling | Emulated by viewport width only |
| Home H1–H4, HOLDING, CAPABILITY_PROBE / ENVIRONMENT_FIRST Initial Picture variants, K2 / dressing and bag_items templates (including the C1/C2 mutual exclusion) | Not reached on the paths run |
| SAFETY_REPLACEMENT | Out of scope; Safety BLOCKED |

---

## 2. Voice source-precedence check (Main CT §4)

**Precedence used:** a later approved Voice / Copy lock wins over Code_Handoff_Morning_v1_0_FINAL. The Code Handoff itself states "No copy changes", so its literals are the existing canvas copy, not locks.

**Search:** Drive, `docs/authoritative`, `src/application/copy` comments and the contract v0.10, by a read-only research pass.

| # | Current string | Code Handoff string | Later canonical Voice / Copy source | Controlling source | Matches |
|---|---|---|---|---|---|
| 1 | "מה חיפשנו לראות" (Check-in anchor) | "מה רצינו לראות" | Check-in handoff v0.2 §1 row 0a: placeholder `[WHAT_WE_WANTED_TO_SEE]`, "copy … owned by Voice". **No Voice lock found** | No locked source. Only literal on record: Code Handoff | **UNDETERMINED** (≠ Code Handoff literal) |
| 2 | "שמירת מה שקרה" (Check-in CTA) | "שומרים" | Check-in handoff v0.2 §1: `[CTA_SAVE]` placeholder. **No Voice lock found** | No locked source | **UNDETERMINED** (≠ Code Handoff literal) |
| 3 | Kicker "לפני הניסיון" + H1 "התכנית של הערב" (Pre-Day) | H1 "הערב ומחר בבוקר", no eyebrow | None found. PRE_DAY_PARENT_CARD_SPEC_v0_5 defines section headings only. readyUx.ts "Pack 02" defines no Pre-Day H1; the Pack 02 document was not found | Code Handoff §3.6 | **NO** |
| 4 | "מה לא לעשות" (Runtime disclosure; First Plan inner list) | "מה לא עושים" (§3.3, §2.3). Pre-Day uses "מה לא עושים" ✓ | None for Voice | Code Handoff §3.3 / §2.3 | Runtime **NO**; Pre-Day YES; First Plan inner title UNDETERMINED |
| 5 | "אם עדיין אין התחלה" (neutral); "אם [שם] לא קם / קמה" (with name + form) | "אם דן לא קם" (canvas sample name) | readyUx.ts cites "Pack 02 — approved UI copy". **Document not found** | Code Handoff §3.3 as the template "אם [שם] לא קם" | Masculine variant YES. Neutral and feminine **UNDETERMINED**. In practice the neutral fallback always shows, because no grammatical form is collected (RT-09) |

**Additional traces:**

| Item | Finding |
|---|---|
| **ADJUST label** | Runtime "משנים את התכנית" vs repo contract §24.5 "צריך להתאים את התכנית" → **NO** against the repo copy of the contract. The Drive canonical copy has no §24.5 (§3 below) |
| Initial Picture "מה עוד צריך לראות" + unknown statements | Only spec found: INITIAL_PICTURE_OUTPUT_SPEC_v0_3 (DRAFT), wording "מה עדיין לא ברור" etc. → **NO** against that draft. Not a locked source |
| Locked Check-in strings (G1–G5, G2 options, G2a, G5 addendum, non-evidence, same-plan CTA, G1 = NO) | **YES**, exact |

---

## 3. Blocker source reconciliation (Main CT §5)

**Source problem found:** there are two different copies of `ENGINE_ADAPTER_CONTRACT_v0_10`.

| Copy | Details |
|---|---|
| Drive (fileId `1YUivC5JjQNolvufnreSlijTcJD_jgPGa`) | "LOCKED — A0/D0 v0.10", 26.09.2026, 130,586 bytes. **Contains no ProgressProjection, no `fadePresentation`, no PR-F (§24.5), no K2 (§4.3) and no PR-B (§4.4) delta** |
| Repo (`docs/authoritative/ENGINE_ADAPTER_CONTRACT_v0_10.md`) | 137,950 bytes. Header adds a 27.9 "K2 activation delta". **Contains §24.5 "Target Support Actions ו-ProgressProjection (v0.10 PR-F)"**. §67 (delta table) does not list PR-F; §22 `PresentationPayload` omits `ProgressProjection`, which is an internal inconsistency |

MORNING_PROFESSIONAL_SOURCE_MANIFEST_v0_1 #12 marks the contract "Control Tower: NOT VERIFIED, כולל post-v0.10 Product deltas".

**→ Which copy is canonical for PR-F is itself a Main CT question.**

| Item | Status | Trace |
|---|---|---|
| **P6 · KEEP** | **PARTIALLY CLOSED** (repo copy only; OPEN by Drive copy) | Repo §24.5: label KEEP "ממשיכים ככה"; KEEP carries `startingSupport` + canonical reflection or null; "אין ב-ProgressProjection רמה מספרית, אחוז, ציון, רצף, ספירת ניסיונות…". §16 hides the decision enum. **Not closed:** whether uncertainty is shown; KEEP body text depends on the Parent-Learning Bank LH-B2 v0.3, which was not found. Runtime shows "שנספרו" wording (RT-10) |
| **P13 · FADE** | **PARTIALLY CLOSED** (repo copy only) | Repo §24.5: `fadePresentation` = "הצעד הזה התייצב" / "עכשיו בודקים איזו עזרה מתאימה הלאה." / `RECHECK_AFTER_FADE`; FADE label "מפחיתים עזרה"; reflection null; "Target חדש מופיע רק אחרי Planning חדש". §61 FADE → TARGET_RECHECK. **Not closed:** the post-CTA path (OD-P1-09; runtime RT-01 = error dead end); LH has no FADE lines (KNOWN_LIMITATIONS §3). The labels "בהתחלה" / "עכשיו" and the CTA "בּודקים מה הלאה" have no document source (code only) |
| **P11 · COVERAGE_GAP / HOLDING / REPLANNING / TARGET_RECHECK** | **OPEN** | §24.4 (in **both** copies): `continuity_result` presentation is null for these states. §37.2 defines actions only (`adjust_replanning` → `[]`). §23: "UI may not … generate missing copy". The shipped titles and messages (ApplicationRenderer `screenTitles`, `canonicalMessage`) have **no document source** |

No new Product decision is created. P6 and P13 are reduced to their unresolved remainders.

---

## 4. RETURN

### RUNTIME AUDIT: PASS WITH FINDINGS

### CONFIRMED ACCESSIBILITY ISSUES

| ID | Issue | Standard status |
|---|---|---|
| RT-05 | Age selector focus invisible | **WCAG 2.4.7 failure** |
| RT-04 | Text-field focus: caret only | F78 pattern; **likely 2.4.7 failure**, judgement on caret |
| RT-07 | Disabled CTA unfocusable, no reason | Standard-conformant; **handoff §7 not met** |
| RT-06 | No live announcement on reveal | No WCAG failure established; **handoff §7 not met**; speech not verified |
| TA-06 | Radio border 2.97–3.00:1 | 1.4.11 **judgement pending**; not a failure |

### CONFIRMED PARENT EXPERIENCE ISSUES

| ID | Issue |
|---|---|
| **RT-01 (S1)** | FADE → recheck → error with no actions (OD-P1-09, now parent-facing) |
| **RT-02 (S1)** | ADJUST → "no suitable plan" with no actions, also on LH-B2-02 |
| RT-03 (S2) | "If no start" disclosure does not open when the wait ends |
| RT-08 (S2) | Silent G5 reset clearing (REV3 behaviour; cue question only) |
| RT-07 (S2) | No "what is missing" on the disabled save |
| RT-09 (S3) | Masculine verbs with a girl's name |
| RT-10 (S3) | "Counted mornings" wording |
| RT-11 (S3) | Inert underlined "היום" |

### STATIC FINDINGS NOT REPRODUCED

| ID | Result |
|---|---|
| TA-07 | Q1 fixed height |
| TA-11 | Overflow clip |
| TA-09 | Legends not headings: not a defect |
| TA-10 | INFO only |
| TG-04 | Closed (confirmed genuinely disabled) |

### PRODUCT DECISIONS ACTUALLY REQUIRED

1. **RT-01 / OD-P1-09:** the post-FADE path. Already open; now confirmed as a parent dead end.
2. **RT-02:** the experience when ADJUST has no replanning source on LH-B2-02 (REV3 open item 2 covers K2 only).
3. **RT-03:** should the Runtime disclosure open when the wait ends, as Code Handoff §2.3 describes?
4. **RT-08:** is a cue wanted when B-01 clears a G5 answer? REV3 is unchanged.
5. **RT-09:** collect a grammatical form, or keep neutral phrasing when a name is used?
6. **RT-11:** should "היום" navigate?
7. **Main CT:** which copy of `ENGINE_ADAPTER_CONTRACT_v0_10` is canonical for PR-F (§3)?

**Withdrawn, now closed by source:** none.
**Reduced:** P6 and P13 (partly closed by the repo copy).

### VOICE ISSUES AFTER SOURCE PRECEDENCE CHECK

**Mismatch with a controlling source:**

| String | Controlling source |
|---|---|
| Pre-Day H1 + kicker | Code Handoff §3.6 |
| Runtime "מה לא לעשות" | Code Handoff §3.3 / §2.3 |
| ADJUST label "משנים את התכנית" | Repo contract §24.5 (subject to the §3 canonical-copy question) |

**UNDETERMINED (no locked source exists):**

| String | Note |
|---|---|
| Check-in anchor label | Placeholder `[WHAT_WE_WANTED_TO_SEE]` |
| Check-in save CTA | Placeholder `[CTA_SAVE]` |
| Neutral and feminine if-not-start headings | Pack 02 not found |
| `[REQUIRED_HINT]` | Not implemented, not locked |
| KEEP / ADJUST reflection lines | Parent-Learning Bank LH-B2 v0.3 not found |

**Not a Voice issue:**
- Check-in anchor and save CTA differ only from the Code Handoff canvas literal.
- All locked Check-in strings match exactly.

### VISUAL REFERENCE CAPTURE: PARTIAL

**Captured (both widths unless noted):**

| Area | Surfaces |
|---|---|
| Entry and intake | Welcome · Trust · Child setup · Moment · Situation · Open Description |
| Planning | Initial Picture (PROCEED) · First Plan · Child Preparation · Pre-Day |
| Runtime | Runtime · after wait (390) |
| Check-in | All G1–G5 paths that were run, including the B-01 clearing and recall |
| Results | Valid result · non-evidence result · same-plan CTA · G1 = NO |
| Progress | KEEP · FADE + after-recheck · ADJUST + after-replan |

Labelled **PRODUCTION VISUAL REFERENCE — COMMIT 4499671**.

**NOT CAPTURED:** Home H1–H4, HOLDING, the CAPABILITY_PROBE / ENVIRONMENT_FIRST Initial Picture, the K2 / dressing / bag_items templates, Safety.

---

No fixes. No code. No deploy.
