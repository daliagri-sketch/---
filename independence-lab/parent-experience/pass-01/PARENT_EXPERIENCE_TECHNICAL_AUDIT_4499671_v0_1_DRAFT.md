# PARENT_EXPERIENCE_TECHNICAL_AUDIT_4499671_v0_1_DRAFT

**Assigned by:** Main CT, read-only implementation audit GO (02.10.2026)
**Test plan:** `PARENT_EXPERIENCE_TECHNICAL_AUDIT_REQUIREMENTS_v0_1_DRAFT`
**Status:** DRAFT. NOT SoT. Read-only. Nothing in code, CSS, tokens, copy, tests, config, contracts, deployment or Production was modified.
**Rule:** this document records findings. It does not prescribe fixes.

---

## 0. Target identification and access

### 0.1 Target

| Item | Value | Source |
|---|---|---|
| Deployment | `dpl_EZLAGVfKofXVWgqk7jYFwM1jPvz2`, state READY | Vercel API, read-only |
| Commit | `449967109bfb352ba45c2f3feb0c3d746c575fbd` (`4499671`), branch `release/staging-morning-2026-09-29` | Vercel API |
| Aliases | `maabadat-haatzmaut.vercel.app` (public) · `maabadat-haatzmaut-git-release-s-f92cac-…vercel.app` (Staging git alias) | Vercel API |

**The Staging alias and the public domain serve the same deployment.** Auditing either one audits the same build.

### 0.2 Access results

| Route | Result | Status |
|---|---|---|
| Staging git alias / deployment URL | HTTP 302 → `vercel.com/sso-api` (Vercel Deployment Protection) | Not reachable without Vercel sign-in |
| Public alias, HTTP | HTTP 200 | Reachable |
| Public alias, headless Chromium | `ERR_CERT_AUTHORITY_INVALID` | Not reachable |
| Command-line flag to accept the session proxy's CA in the browser | Denied by the session's permission policy | Not retried in any form |
| Local build of the same commit as an alternative target | Reading the build scripts was denied by the session's permission policy | Not pursued |

**Why the browser fails:** the session's HTTPS proxy re-terminates TLS. The proxy README says its CA is pre-installed in the browser NSS store, but `certutil -L` on `/root/.pki/nssdb` shows **the store is empty**.

**Consequence:** no runtime check could run, and no screen could be captured. The audit fell back to **static source inspection** of commit `4499671`:
- Repo `daliagri-sketch/maabadat-haatzmaut`, cloned read-only at the exact SHA.
- Files: `app/layout.tsx`, `app/prototype.css`, `src/application/ApplicationRenderer.tsx`, `src/application/demo/DemoExperience.tsx`, `src/application/ui/*`, `src/application/copy/checkinCopy.ts`.

**What source inspection can and cannot establish:**
- It **can** establish markup, ARIA attributes and the CSS rules that ship.
- It **cannot** establish rendered colour, computed cascade outcome in every case, real focus behaviour, screen-reader output, zoom or reflow, or browser-chrome behaviour.

Every finding below is labelled:

| Label | Meaning |
|---|---|
| `SRC` | Established from source; runtime confirmation still required |
| `SRC-CONFIRMED` | Unambiguous in source (e.g. an attribute is absent) |

**App architecture (source):**
- Client-side fixture engine.
- On the public path the demo gate is closed: no fixtures (`?fixture=` ignored), no sessionStorage, no server writes.
- KEEP, ADJUST and FADE are reachable on the public alias only by completing four or more real Check-ins in one session.

---

## 1. Severity scale

| Level | Meaning |
|---|---|
| **S1** | Blocks completion of a parent task for some users |
| **S2** | Significant barrier or a spec requirement not met; task still possible |
| **S3** | Minor barrier or risk; needs runtime confirmation |
| **INFO** | No defect; a fact the audit established |

---

## 2. Findings

### TA-01 · Check-in reveal is not announced
- **SCREEN / STATE:** Check-in. After G1 = כן (G2–G5 appear); after G2 = לא (G2a appears).
- **CHECK:** T-DYN-01 dynamic status announcement.
- **EXPECTED:** One `aria-live="polite"` announcement per reveal (handoff v0.2 §7).
- **OBSERVED (`SRC-CONFIRMED`):** No `aria-live` region exists anywhere in the Check-in. Reveal uses the `hidden` attribute and `aria-controls` on the revealing options (both present ✓), but nothing is announced.
- **EVIDENCE:** `DemoExperience.tsx` L236–277. The repo-wide search finds `aria-live` nowhere; the only `role="status"` is on the insufficient-report line.
- **SEVERITY:** S2.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. The new groups follow in DOM and tab order.
- **OWNER:** CODE.

### TA-02 · Disabled "save" CTA cannot be focused and does not say why
- **SCREEN / STATE:** Check-in, any incomplete report. Also every disabled primary CTA (Entry steps, Open Description).
- **CHECK:** T-KEY-07, T-ERR-03.
- **EXPECTED:** `aria-disabled="true"`, stays in the tab order, `aria-describedby` → `[REQUIRED_HINT]` (handoff v0.2 §7).
- **OBSERVED (`SRC-CONFIRMED`):**
  - The CTA uses the native `disabled` attribute, so it leaves the tab order.
  - No `aria-describedby`.
  - No required-hint element exists.
  - Visual state matches the Alignment Note (beige, `--disabled` label) ✓.
- **EVIDENCE:** `ui/PrimaryAction.tsx` L21; `ApplicationRenderer.tsx` L180 (`missingInput` → `disabled`).
- **SEVERITY:** S2.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE + VOICE (no locked hint string exists, W7 V-02).

### TA-03 · Clearing a G5 answer (B-01) is silent
- **SCREEN / STATE:** Check-in, LH-B2-02. Reset row selected in G5, then a C2 fact selected in G2a, or G2 changed to לא while a C2 fact is kept.
- **CHECK:** T-DYN-04.
- **EXPECTED (test plan):** Record whether anything is announced and whether the parent can find the unanswered group. REV3 §3a behaviour itself is closed.
- **OBSERVED (`SRC-CONFIRMED`):**
  - The reset is cleared in state (`clearedReset`); G5 returns to unanswered.
  - No announcement, no visual note, no hint.
  - Combined with TA-02, the CTA becomes disabled with no stated reason.
- **EVIDENCE:** `DemoExperience.tsx` L148, L180–192.
- **SEVERITY:** S2.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** PARENT EXPERIENCE (risk W2 CR-04, confirmed) + PRODUCT (whether any cue is wanted) + CODE.

### TA-04 · Text fields have no visible focus indicator
- **SCREEN / STATE:** Child setup (name field), Open Description (textarea), assessment clarification (text input).
- **CHECK:** T-KEY-04 (WCAG 2.4.7).
- **EXPECTED:** A visible focus indicator.
- **OBSERVED (`SRC`):** Three rules combine:
  - `textarea,input[type=text]{outline:none}` (prototype.css L6).
  - The focus ring was a `box-shadow`, now removed by `.engine-shell *{box-shadow:none!important}` (L158).
  - The focus border colour (`textarea:focus,input:focus{border-color:…}`) is overridden by later equal- or higher-specificity border rules (L300).

  Expected rendered result: no change on focus other than the caret.
- **EVIDENCE:** `app/prototype.css` L6, L158, L300.
- **SEVERITY:** S2 (WCAG 2.4.7 failure candidate).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. Runtime confirmation required.
- **OWNER:** CODE.

### TA-05 · Age selector: keyboard focus not visible
- **SCREEN / STATE:** Child setup, age 4 / 5 / 6 / 7.
- **CHECK:** T-KEY-04.
- **EXPECTED:** A visible focus indicator.
- **OBSERVED (`SRC`):**
  - The native radio is `opacity:0` (L34).
  - The only label-level focus rule targets an older class (`.age-option:has(:focus-visible)`) not used by this markup (`.segmented-options`).
  - No focus style reaches the visible label.
- **EVIDENCE:** `prototype.css` L6, L34; `DemoExperience.tsx` L73.
- **SEVERITY:** S2 (2.4.7 candidate).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE.

### TA-06 · Unselected radio and checkbox borders at the 3:1 line
- **SCREEN / STATE:** Check-in, all option rows and Q1 buttons.
- **CHECK:** T-CON-04 (WCAG 1.4.11).
- **EXPECTED:** Judgement on whether the border is needed to identify the control or its state.
- **OBSERVED (`SRC-CONFIRMED`):** The implementation uses `--radio-line` (ink at 45%) as specified. Spec-level ratio: 2.97 on page, 3.00 on card. The unavailable state uses `--disabled` (3.46).
- **EVIDENCE:** `prototype.css` L153, L278, L344.
- **SEVERITY:** S3 (pending judgement on the rendered colour).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** PARENT EXPERIENCE (the token is a 06 presentation spec) + CODE for measurement.

### TA-07 · Q1-style option buttons have a fixed height
- **SCREEN / STATE:** Check-in G1, G2, G3 yes / no buttons.
- **CHECK:** T-TGT-01, T-ZOOM-01.
- **EXPECTED:** 58 px minimum; a wrapped label grows the button and is never truncated (handoff v0.2 §5).
- **OBSERVED (`SRC-CONFIRMED`):** `.radio-choices.buttons label{height:58px}`, a fixed height, not a minimum. Labels are short ("כן", "לא", "לא ברור לי"), so the risk is limited to 200% zoom and large system text.
- **EVIDENCE:** `prototype.css` L277.
- **SEVERITY:** S3.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING. Runtime zoom test required.
- **OWNER:** CODE.

### TA-08 · "היום" looks like a link but is inert text
- **SCREEN / STATE:** Header, every screen.
- **CHECK:** T-TGT-04, T-SEM-03.
- **EXPECTED:** Code Handoff §2.5 calls it "a text link".
- **OBSERVED (`SRC-CONFIRMED`):** It is a `<span>`, underlined, with no handler, not focusable and with no role. It looks clickable and does nothing.
- **EVIDENCE:** `ui/AppShell.tsx` L19; `prototype.css` L163.
- **SEVERITY:** S3.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** PRODUCT (should "היום" navigate?) + CODE.

### TA-09 · Check-in questions are legends, not headings
- **SCREEN / STATE:** Check-in.
- **CHECK:** T-SEM-02, T-SR-01.
- **EXPECTED:** Handoff v0.2 §7: "each group is a `fieldset` whose `legend` is the H2".
- **OBSERVED (`SRC-CONFIRMED`):** `fieldset` + `legend` ✓ (the group is announced with its question). The legend is not a heading, so screen-reader heading navigation skips the six questions.
- **EVIDENCE:** `DemoExperience.tsx` L240–268.
- **SEVERITY:** S3.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** PARENT EXPERIENCE (the spec wording is ambiguous) + CODE.

### TA-10 · `aria-label` on a generic container
- **SCREEN / STATE:** Every screen with actions.
- **CHECK:** T-SEM-07.
- **EXPECTED:** No ineffective ARIA.
- **OBSERVED (`SRC-CONFIRMED`):** `<div className="engine-actions" aria-label="פעולות זמינות">` has no role. Naming a generic element is not supported, so the label is likely never exposed.
- **EVIDENCE:** `ui/ActionBar.tsx` L5.
- **SEVERITY:** INFO / S3.
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE.

### TA-11 · Horizontal overflow is clipped
- **SCREEN / STATE:** All screens.
- **CHECK:** T-ZOOM-03, horizontal overflow.
- **EXPECTED:** No horizontal scroll at 320 because content reflows.
- **OBSERVED (`SRC`):** `.engine-shell{overflow-x:clip}` hides overflow. Anything wider than the viewport would be cut rather than scroll. Whether anything overflows is unknown without rendering.
- **EVIDENCE:** `prototype.css` L317.
- **SEVERITY:** S3 (risk).
- **BLOCKING / NON-BLOCKING:** NON-BLOCKING.
- **OWNER:** CODE.

### TA-12 · Runtime "עדיין אין התחלה" is genuinely inactive during the wait
- **SCREEN / STATE:** Runtime.
- **CHECK:** T-CON-03; TG-04 (active vs disabled).
- **OBSERVED (`SRC-CONFIRMED`):**
  - `REPORT_RUNTIME_NO_START` uses the native `disabled` attribute until the canonical wait elapses (`reportNoStartReady`). Then it is enabled with ink text.
  - The `--disabled` colour is therefore used only on an inactive control, which is exempt from 1.4.3.
- **EVIDENCE:** `ui/PrimaryAction.tsx` L28–30; `prototype.css` L187.
- **SEVERITY:** INFO. **TG-04 closed by source.**
- **OWNER:** —

### TA-13 · Error state exists only as a generic technical surface
- **SCREEN / STATE:** Any action failure.
- **CHECK:** T-ERR-01, T-ERR-02, T-ERR-04.
- **OBSERVED (`SRC-CONFIRMED`):**
  - One generic surface, `role="alert"`: "לא הצלחנו להשלים את הפעולה כרגע."
  - No field-level validation errors (none are expected; the CTA gates completeness).
  - Whether Check-in answers survive a technical error: unknown without runtime.
- **EVIDENCE:** `ApplicationRenderer.tsx` L179.
- **SEVERITY:** INFO. TG-02 partly answered.
- **OWNER:** PRODUCT (error-state experience, decision-pack item TG-02).

### TA-14 · Initial Picture has an uncertainty slot the handoff did not list
- **SCREEN / STATE:** Initial Picture, decisions CAPABILITY_PROBE and ENVIRONMENT_FIRST.
- **OBSERVED (`SRC-CONFIRMED`):** A conditional block "מה עוד צריך לראות" with an "unknown" statement, between "מה כבר ברור" and "מה עושים עכשיו". Code Handoff §3.1 lists three steps. The strings live in source; their Voice-lock provenance was not supplied.
- **EVIDENCE:** `ApplicationRenderer.tsx` L65–73.
- **SEVERITY:** INFO. **Corrects W1-F1:** the implementation does show uncertainty on Initial Picture for these two decisions.
- **OWNER:** PARENT EXPERIENCE (update W1) + VOICE (confirm the strings).

### TA-15 · Implemented strings that differ from the strings quoted in Code Handoff v1.0
- **OBSERVED (`SRC-CONFIRMED`):**

| Element | Implemented string | String quoted in Code Handoff |
|---|---|---|
| Check-in anchor label | "מה חיפשנו לראות" | "מה רצינו לראות" |
| Check-in CTA | "שמירת מה שקרה" | "שומרים" |
| Pre-Day H1 | "התכנית של הערב", with kicker "לפני הניסיון" | "הערב ומחר בבוקר", no eyebrow |
| Runtime disclosure | "מה לא לעשות" | "מה לא עושים" |
| Runtime disclosure | "אם עדיין אין התחלה" | "אם [שם] לא קם" |

- **Context:** Code Handoff §0 scope says "No copy changes", so its quoted strings may be canvas strings, not Voice locks. 06 does not judge which is approved.
- **Locked Check-in strings match exactly ✓:** G1–G5 questions, G2 options, all G2a labels, all G5 labels, non-evidence statement, same-plan CTA (`copy/checkinCopy.ts`).
- **SEVERITY:** INFO.
- **OWNER:** VOICE (confirm provenance).

### TA-16 · The intake path exists in implementation
- **OBSERVED (`SRC-CONFIRMED`):** Welcome → Trust → Child setup (name, age) → Morning moment → Morning situation (leaving_home only) → Open Description → Initial Picture.
- **SEVERITY:** INFO. Implementation fact, not Product canon. Input to W1 and to decision item P2.
- **OWNER:** PARENT EXPERIENCE + PRODUCT.

### TA-17 · Checks that pass in source (`SRC-CONFIRMED` unless noted)

| Check | Result |
|---|---|
| T-SEM-01 | `<html lang="he" dir="rtl">` |
| T-SEM-03 | Actions are `<button type="button">` |
| T-SEM-04 | Check-in groups: `fieldset` + `legend`; native `radio`; G2a native `checkbox` (multi-select per Alignment Note) |
| T-SEM-05 | Unrevealed groups use the `hidden` attribute (plus `display:none!important`) |
| T-SEM-06 | Disclosures are native `<details>` / `<summary>` |
| T-SR-02 / 03 | Unavailable rows use native `disabled` on the input |
| T-SR-06 / 07 | Progress dots `aria-hidden="true"`; brand images have `alt="מעבדת העצמאות"` |
| T-KEY-04, buttons | Focus indicator on buttons, links, `summary` and Check-in radios / checkboxes: 2 px ink outline (spec contrast ≥ 15:1) |
| T-KEY-06 | No focus move on reveal (no focus management code) |
| T-CHR-01 / 03 | CTA in flow; `viewport-fit=cover`; bottom padding `calc(36px + env(safe-area-inset-bottom))`; header `position:relative` |
| T-CHR-05 | Entry `min-height: calc(100dvh - 56px)` with a `100vh` fallback |
| T-CHR-04 | Open Description scrolls the CTA into view on focus and `visualViewport` resize (`SRC`) |
| T-DYN-03 | Hidden-group answers kept in draft, not submitted |
| T-CON-06 | Selected state = ink dot (Alignment Note #5) |
| Disabled visuals | Primary = beige + `--disabled`; secondary = `--disabled` (Alignment Note #6) |
| T-SR-05 | Footer note renders a real string; no raw placeholders in Check-in source. `[REQUIRED_HINT]` and `[MORE_QUESTIONS_APPEARED]` have **no implementation** (see TA-01, TA-02) |

### Not executed

The following could not run at all:
- T-KEY-01/02/03/05 (live)
- T-RTL-01–04 (live order)
- T-SR live output
- T-TGT measured sizes
- T-CON measured colours
- T-ZOOM-01–04
- T-VP-01–06
- T-CHR-02/06/07
- T-DYN-02/05/06 (live)
- T-ERR-01/02 (live)

**Reason:** browser access blocked (§0).

---

## 3. Final summary

### AUDIT STATUS: BLOCKED

The runtime audit could not run (§0): the browser cannot complete TLS through the session proxy, and the alternatives were denied by the session's permission policy. Static source inspection is complete for the Check-in and the shared shell. It produced 11 findings (TA-01–TA-11) and 6 facts (TA-12–TA-17).

### ACCESSIBILITY BLOCKERS

**None at S1 level found in source.**

S2 candidates, which need runtime confirmation:

| ID | Issue |
|---|---|
| TA-01 | No reveal announcement |
| TA-02 | Disabled CTA unfocusable, no reason |
| TA-04 | Text-field focus invisible |
| TA-05 | Age-selector focus invisible |

### PARENT EXPERIENCE BLOCKERS

**None blocking.** PX-relevant findings:

| ID | Finding |
|---|---|
| TA-03 | Silent B-01 clearing; confirms W2 CR-04 |
| TA-02 | No "why is save disabled" |
| TA-08 | Inert "היום" |
| TA-14 | Corrects W1-F1 |

### PRODUCT DECISIONS REQUIRED

| From | Decision |
|---|---|
| TA-03 | Is any cue wanted when B-01 clears a G5 answer? |
| TA-08 | Is "היום" meant to navigate? |
| TA-13 | Check-in error-state experience (already TG-02 in the decision pack) |

**VOICE INPUT REQUIRED:**

| From | Input |
|---|---|
| TA-02 | Required-hint string |
| TA-14 | Initial Picture "unknown" strings |
| TA-15 | Provenance of five implemented strings |

### CODE ISSUES

| Severity | IDs |
|---|---|
| S2 candidates | TA-01, TA-02, TA-04, TA-05 |
| S3 | TA-07, TA-09, TA-10, TA-11 |
| Measurement | TA-06 (measure rendered colour) |

No fix is prescribed.

### VISUAL REFERENCE CAPTURE: BLOCKED

**0 screens captured.** Neither COMPLETE nor PARTIAL applies. Nothing is labelled STAGING VISUAL REFERENCE yet.

### What unblocks the runtime audit and the capture

One of these is needed. **Your decision; I have not done either.**

1. **Approve the browser trusting this session's HTTPS proxy CA** (`/root/.ccr/agent-proxy-ca.crt`). Per the proxy README this should already be in the browser NSS store, but the store is empty. It can be done by importing that CA into `/root/.pki/nssdb`, or by allowing Chromium to accept that one CA.
2. **Approve building and running commit `4499671` locally** (install dependencies, build, run on localhost) and audit that. This audits the same source, but not the hosted artifact. It would also open the demo gate (fixtures), which makes KEEP / ADJUST / FADE directly reachable.
3. **Provide an authenticated Staging session or screenshots** from a person's device, and keep 06 on review only.
