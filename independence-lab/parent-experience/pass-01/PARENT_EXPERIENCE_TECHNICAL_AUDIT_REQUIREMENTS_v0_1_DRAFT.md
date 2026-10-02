# PARENT_EXPERIENCE_TECHNICAL_AUDIT_REQUIREMENTS_v0_1_DRAFT

**Workstream:** W5 · Mobile / Accessibility / RTL
**Status:** DRAFT. AUDIT SPECIFICATION ONLY. **The audit is not run.** It runs only when Main CT assigns it.
**Target when assigned:** Production `4499671`, released Morning flow.
**Boundary:** no code change, no config change, no claim about current implementation. Every result field below is empty until the audit runs.

---

## 0. Ground rules

1. **Requirement sources:**
   - Canonical presentation specs: Code Handoff v1.0, Check-in handoff v0.2, Alignment Note.
   - WCAG 2.2 Level AA as the engineering reference.
2. **Legal mapping:** WCAG 2.2 is not presented as an Israeli legal requirement. The SI 5568 version is unverified (Gemini audit I3–I5).
3. **Network limits:** W3C pages could not be fetched in this session (environment network policy). Criterion numbers are from the stable WCAG 2.2 Recommendation and must be re-checked against w3.org before the audit report is issued.
4. **Result values:** each check returns PASS / FAIL / NOT APPLICABLE / BLOCKED, with captured evidence (screenshot, DOM excerpt or screen-reader transcript).
5. **When a check fails:** the auditor records it and routes it to Main CT. The auditor does not fix.

## 1. Coverage

### 1.1 Screens

| ID | Screen | Notes |
|---|---|---|
| S1 | Entry | |
| S2 | Open Description | Keyboard case |
| S3 | Initial Picture | |
| S4 | First Plan | |
| S5 | Child Preparation | |
| S6 | Pre-Day | |
| S7 | Runtime | |
| S8 | Check-in | All reveal paths: G1 = NO · G2 = כן · G2 = לא + each template's G2a set · G2 = לא ברור לי · LH-B2-02 C2 + reset clearing · K2 mutual exclusion |
| S9 | Learning Result | Non-evidence |
| S10 | Learning Result | G1 = NO |
| S11 | Learning Result | KEEP / ADJUST / FADE, if reachable |
| S12 | Home | H1–H4 |

### 1.2 Environments

| ID | Environment |
|---|---|
| E1 | iOS Safari, current |
| E2 | Android Chrome, current |
| E3 | One in-app browser (Instagram or WhatsApp webview) |
| E4 | Desktop Chrome with keyboard only |
| E5 | VoiceOver iOS |
| E6 | TalkBack Android |
| E7 | NVDA + desktop browser (optional) |

### 1.3 Viewports

| Width × height | Purpose |
|---|---|
| 390 × 844 | Main reference size |
| 320 × 568 | Small-screen limit (Code Handoff §3.2, §3.3) |
| 320 × 640 | Child Preparation CTA rule |

---

## 2. Required checks

### 2.1 Semantic HTML · T-SEM

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-SEM-01 | Language and direction on the root element | `<html lang="he" dir="rtl">`, or an equivalent declared on a single root | WCAG 3.1.1 · RTL principle (audit I8) |
| T-SEM-02 | Heading structure | One H1 per screen. Check-in groups use H2. No skipped levels used for styling | WCAG 1.3.1 · Code Handoff §1.2 |
| T-SEM-03 | Buttons are buttons | CTA, options and Disclosure toggles are `<button>` (or native inputs), not clickable `<div>` | WCAG 4.1.2 · audit E2 |
| T-SEM-04 | Check-in groups | Each group is a `fieldset` with a `legend` = its H2. Radio or checkbox semantics match single or multi select (G2a = multi) | handoff §7 · Alignment Note #2 |
| T-SEM-05 | Hidden groups | Unrevealed groups use the `hidden` attribute, not only visual hiding | handoff §7 |
| T-SEM-06 | Disclosures | `aria-expanded` and `aria-controls` on the toggle. Content region present | Code Handoff §2.3 |
| T-SEM-07 | Minimal ARIA | No ARIA role duplicating native semantics. No `role` on an element that already has it natively | audit E2 / I9 |

### 2.2 Keyboard and focus · T-KEY

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-KEY-01 | Every action reachable by keyboard | Tab reaches every CTA, option and Disclosure | WCAG 2.1.1 |
| T-KEY-02 | Focus order follows RTL reading order | Focus moves right → left, top → bottom, matching the visual order | WCAG 2.4.3 · audit I8 |
| T-KEY-03 | Arrow keys inside groups | Arrows move within radio groups | handoff §7 |
| T-KEY-04 | **Visible focus indicator** | A visible focus indicator on every interactive element. **Not specified in any canonical presentation source:** record what Production does | WCAG 2.4.7 · gap TG-01 |
| T-KEY-05 | Focus not hidden | The focused element is not fully covered by browser chrome or the keyboard | WCAG 2.4.11 |
| T-KEY-06 | Focus stays on reveal | After G1 = כן or G2 = לא, focus stays on the tapped control and does not jump into new content | handoff §7 |
| T-KEY-07 | Disabled CTA discoverable | Disabled CTA stays in the tab order with `aria-disabled="true"` | handoff §7 |

### 2.3 RTL DOM order · T-RTL

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-RTL-01 | DOM order = visual order | Reading order in the DOM matches the visual order. No reordering by `row-reverse` or `order` alone | WCAG 1.3.2 · audit I8 |
| T-RTL-02 | Direction-dependent icons | The CTA arrow points left (the end side), as specified | Code Handoff §2.1 |
| T-RTL-03 | Accent bars | Accent bar on the right (the start side) via a logical or right property | Code Handoff §1.3 |
| T-RTL-04 | Mixed-direction content | Numbers, names and Latin text inside Hebrew lines do not reorder incorrectly | WCAG 1.3.2 |

### 2.4 Screen-reader semantics · T-SR

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-SR-01 | Group announced with its question | Entering a group announces the legend (the locked question) | handoff §7 |
| T-SR-02 | Option state | Selected / not selected / unavailable announced correctly | WCAG 4.1.2 |
| T-SR-03 | Unavailable rows | Rows made unavailable by mutual exclusion, UNKNOWN exclusivity or B-01 are announced as unavailable | REV3 §3a, §4a, §7 |
| T-SR-04 | Dashed "לא ברור לי" row | Announced as a normal option. The dashed style carries no information that only sight can get | WCAG 1.3.3 |
| T-SR-05 | Placeholder strings | `[REQUIRED_HINT]`, `[MORE_QUESTIONS_APPEARED]` and the footer render as real strings, never as raw placeholders. Record the actual strings for Voice | handoff §7 · W2 CR-09 |
| T-SR-06 | Decorative elements silent | Logo dot, progress dots, ✕ icons and the eye icon are not announced as content (or are announced meaningfully) | WCAG 1.1.1 |
| T-SR-07 | Progress dots | If announced, they say position, not "progress" | W1-F3 |

### 2.5 Touch targets · T-TGT

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-TGT-01 | Q1-style buttons | Height ≥ 58 px. A wrapped label grows the button and is never truncated | handoff §5, §7 |
| T-TGT-02 | List rows | Tap area ≥ 48 px high per row. The whole row is tappable, not only the radio | handoff §7 |
| T-TGT-03 | Floor | Every pointer target ≥ 24 × 24 CSS px or meets a 2.5.8 exception | WCAG 2.5.8 |
| T-TGT-04 | "היום" text link | Tap area meets T-TGT-03 | Code Handoff §2.5 |

### 2.6 Contrast · T-CON

Spec-level ratios were computed by 06 from the locked tokens (Code Handoff §1.1). They are **not** measurements of Production; the audit confirms the rendered colours.

**Text pairs:**

| Pair | Ratio |
|---|---|
| ink / page | 17.36 |
| ink / yellow | 12.61 |
| ink / beige | 15.76 |
| ink / card | 18.42 |
| text-2 / page | 8.85 |
| text-2 / beige | 8.03 |
| muted / page | 5.38 |
| muted / beige | 4.88 |
| muted / card | 5.71 |
| **disabled / page** | **3.46** |
| **disabled / beige** | **3.14** |

**Non-text (ink at alpha over the background):**

| Pair | Ratio |
|---|---|
| **radio-line (0.45) / page** | **2.97** |
| **radio-line / card** | **3.00** |
| **radio-line / beige** | **2.90** |
| opt-line (0.20) / card | 1.54 |
| btn-line (0.30) / page | 1.96 |

**Checks:**

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-CON-01 | Body and label text | ≥ 4.5:1. All spec pairs except `--disabled` pass | WCAG 1.4.3 |
| T-CON-02 | Disabled CTA label | `--disabled` on `--beige` = 3.14. Passes **only** as an inactive control (1.4.3 exception). Confirm the control is truly inactive | WCAG 1.4.3 |
| T-CON-03 | **Runtime "עדיין אין התחלה"** | Spec: "disabled colour" (3.46 on page). If this button is active, its label fails 4.5:1. Determine whether it is inactive or only styled that way | Code Handoff §3.3 · WCAG 1.4.3 |
| T-CON-04 | **Radio border (unselected state)** | Spec ratio 2.90–3.00, at or under 3:1. Assess whether the border is needed to identify the control or its state. If so, record it as a FAIL candidate for 1.4.11 and route to Main CT. Do not change tokens | WCAG 1.4.11 |
| T-CON-05 | Button and option boundaries | 1.54–1.98. Acceptable if the text label alone identifies the control (1.4.11 does not require a boundary then). Confirm per component | WCAG 1.4.11 |
| T-CON-06 | Selected state | The ink dot inside the radio is distinguishable from unselected (ink on card 18.42) | Alignment Note #5 |
| T-CON-07 | Focus indicator contrast | Measure whatever indicator T-KEY-04 finds | WCAG 1.4.11 / 2.4.7 |

### 2.7 200% text resize · T-ZOOM

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-ZOOM-01 | Browser text zoom 200% | No loss of content or function. No clipped labels in Q1 buttons or rows | WCAG 1.4.4 |
| T-ZOOM-02 | Karantina headings at 200% | Wrap without breaking a word | Code Handoff §1.2 |
| T-ZOOM-03 | Reflow at 320 CSS px | No horizontal scroll | WCAG 1.4.10 · handoff §5 |
| T-ZOOM-04 | Text spacing override | No loss with increased line, letter and word spacing | WCAG 1.4.12 |

### 2.8 320 / 390 behaviour · T-VP

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-VP-01 | Entry H1 at 320 | Stays on two lines | Code Handoff §3.7 |
| T-VP-02 | Runtime at 320 × 568 | The whole "עכשיו" card is visible without scrolling | §3.3 |
| T-VP-03 | Child Preparation at 320 × 640 | CTA visible without scrolling | §3.2 |
| T-VP-04 | Child Preparation at 320 × 568 | Known limit, text not shrunk. **Record only, not a failure** | §3.2 |
| T-VP-05 | Check-in rows at 320 | Wrapped text; radio aligned to the first line | §3.4 |
| T-VP-06 | Check-in length at 390 | Record screens per path (G1 = NO; ordinary; deviation) against the handoff estimates (<1 / ≈2 / ≈2.5) | handoff §5 |

### 2.9 Viewport and browser-chrome behaviour · T-CHR

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-CHR-01 | CTA in flow | No `position: fixed` / `sticky` on the CTA | Code Handoff §2.4 |
| T-CHR-02 | Max-scroll visibility | The whole 58 px CTA is visible and tappable at max scroll in E1, E2, E3 | §2.4 |
| T-CHR-03 | Safe area | `viewport-fit=cover` present. Bottom padding includes `env(safe-area-inset-bottom)` | §2.4 |
| T-CHR-04 | Keyboard on Open Description | CTA stays visible above the keyboard and accessory bar on focus and resize | §2.4 |
| T-CHR-05 | Full-height Entry | Record the viewport unit used. Confirm the CTA is not pushed under the toolbar | audit I1, K2 |
| T-CHR-06 | Back navigation | iOS edge-swipe back and the in-app back button during the Check-in: record what is lost | GAP-07 · Gemini Q37 |
| T-CHR-07 | Reload during the Check-in | Record what is lost (no persistence expected, REV3 §19) | GAP-07 |

### 2.10 Dynamic content and status announcements · T-DYN

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-DYN-01 | Reveal announcement | One polite announcement per reveal (`[MORE_QUESTIONS_APPEARED]`) | handoff §7 |
| T-DYN-02 | No layout jump | Reveal ≤ 150 ms fade, no jump above the tapped control, no auto-scroll | handoff §2 |
| T-DYN-03 | Answers kept on hide | A hidden group's answers are kept in session state and not submitted | handoff §2 |
| T-DYN-04 | **B-01 clearing** | When a C2 fact clears the reset row: record whether anything is announced and whether the parent can find which group is now unanswered | REV3 §3a · W2 CR-04 |
| T-DYN-05 | Disclosure open on wait end | Runtime "אם [שם] לא קם" opens when the wait ends; state change exposed to AT | Code Handoff §2.3 |
| T-DYN-06 | Mutual-exclusion changes | Unavailable or available changes exposed to AT | REV3 §4a, §7 |

### 2.11 Error states · T-ERR

| ID | Check | Pass criterion | Source |
|---|---|---|---|
| T-ERR-01 | Submit failure on "שומרים" | Record behaviour on network failure: message, retained answers, retry. **No canonical spec exists** | gap TG-02 |
| T-ERR-02 | Contract rejection | Record what the parent sees if a report is rejected (e.g. an impossible combination reaching the server) | REV3 §13 · TG-02 |
| T-ERR-03 | Required-answer state | Disabled CTA + `[REQUIRED_HINT]` identify what is missing | handoff §7 · W2 CR-04 |
| T-ERR-04 | Error message accessibility | Any error found is announced and associated with its field | WCAG 3.3.1, 4.1.3 |

## 3. Gaps found while writing the specification

| ID | Gap | Classification |
|---|---|---|
| TG-01 | No focus-indicator style is specified in Code Handoff v1.0 or the Alignment Note | Presentation gap. Product / 06 requirement. Non-blocking until the audit |
| TG-02 | No error-state experience is specified for the Check-in (submit failure, rejection) | Product. W6 (HOLD) |
| TG-03 | Radio border contrast sits at the 3:1 line (T-CON-04) | Needs audit judgement. **Not a confirmed failure** |
| TG-04 | Runtime "עדיין אין התחלה": inactive or not (T-CON-03) | Needs audit |

## 4. Report format when the audit runs

One row per check: **ID · environment · viewport · result · evidence link · note.**

Totals are reported by area. Any FAIL is routed to Main CT. No remediation is done in the audit.

## 5. TECHNICAL AUDIT READY: YES

The specification is complete. The audit itself waits for:
1. Main CT assignment.
2. Access to a running Production or Staging build of `4499671` and the devices or emulators in §1.2.
