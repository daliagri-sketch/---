# W1 · PARENT_JOURNEY_MAP_MORNING_v0_1_DRAFT

**Workstream:** W1 · Parent Journey & Information Architecture
**Scope:** released Morning only (`4499671`, REV3). Main CT authorisation 02.10.2026.
**Status:** DRAFT. NOT SoT. No screen design. No copy. No Morning change.
**Method:** every cell below is taken from a named source, or marked:
- `NOT IN SOURCE` — no source holds it.
- `REF-ONLY` — the only source is HOME_v0_10_RECONSTRUCTED.
- `BLOCKED` — Safety.

---

## 1. The parent's journey, as the sources define it

### 1.1 Setup sequence (once per PlanningInstance)

```
Entry → [Open Description] → Initial Picture → First Plan → Child Preparation → Pre-Day
```

| Step | CTA that moves forward | Source |
|---|---|---|
| Entry | "מתחילים" | Code Handoff §3.7 |
| Open Description | — | Screen exists (Code Handoff §2.4 keyboard rule; D2 "no board"). **Its position and content in the sequence: NOT IN SOURCE** (Product item P2) |
| Initial Picture | "לתכנית" | Code Handoff §3.1 |
| First Plan | "ממשיכים להכנה" | Code Handoff §3.5 |
| Child Preparation | "ממשיכים" | Code Handoff §3.2 |
| Pre-Day | "מתחילים" | Code Handoff §3.6 |

### 1.2 Daily loop (per practice opportunity)

```
Home (PLAN_READY · H1/H2) → Runtime (ATTEMPT_IN_PROGRESS · H3) → Check-in (PENDING_CHECKIN · H4) → Learning Result → Home
```

### 1.3 Application states

**Home cards and states:** REF-ONLY (HOME §2–§3).

| State | Defined parent experience? | Source |
|---|---|---|
| PLAN_READY / ATTEMPT_IN_PROGRESS / PENDING_CHECKIN | Yes: Home card H1–H4 | REF-ONLY |
| LEARNING_RESULT | Partly. Non-evidence result and G1 = NO result are locked. KEEP / ADJUST / FADE: no 06 board (D2) | REV3 §9, §16; Copy Lock Pack |
| TARGET_RECHECK · REPLANNING · COVERAGE_GAP · HOLDING | **No.** Presentation = null | REF-ONLY · GAP-05 |
| SAFETY_REPLACEMENT | **BLOCKED** | Main CT closure 2 |

---

## 2. Screen purpose and information hierarchy (handoff §14 questions)

Each column answers one §14 question. Each cell is sourced.

### 2.1 Entry

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Starting point | Code Handoff §3.7 |
| What must the parent know? | Copy on HOLD (source provenance). H1 + sub-line | §3.7 |
| What is the fact / meaning / uncertainty? | Not applicable | — |
| What is the one next action? | "מתחילים" (only yellow) | §0, §3.7 |
| What is hidden until requested? | Nothing | — |
| What is the shame or false-certainty risk? | Low | — |
| What must stay traceable? | — | — |

### 2.2 Initial Picture (K02)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | First reflection of what the parent described | §3.1 |
| What fact is visible? | "ממה שסיפרת" | §3.1 |
| What meaning is visible? | "מה כבר ברור" | §3.1 |
| What uncertainty is visible? | **NOT IN SOURCE.** The layout has no slot for what is *not yet* clear (W1-F1) | — |
| What is the one next action? | "מה עושים עכשיו" + CTA "לתכנית" | §3.1 |
| What is the shame or false-certainty risk? | "מה כבר ברור" may read as certainty when the Capability evidence is thin | Expert inference · RQ |
| What must stay traceable? | Meaning ← what the parent said | Structure of §3.1 |

### 2.3 First Plan (K03)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Present the target and the first attempt | §3.5 |
| What must the parent know? | "על מה עובדים" (target); "מה עושים בניסיון הראשון"; "אם [שם] לא קם"; "מה מסתכלים לראות" | §3.5 |
| What fact / meaning is visible? | "מה כבר ידוע" / "מה משתנה בעזרה שלך" | §3.5 |
| What uncertainty is visible? | NOT IN SOURCE | — |
| What is the one next action? | "ממשיכים להכנה" | §3.5 |
| What is hidden until requested? | "עוד פרטים" (closed). No guardrail removed | §2.3 |
| What is the shame risk? | "מה משתנה בעזרה שלך" places change on the parent. Copy is locked; risk recorded only | RQ |
| What must stay traceable? | Target ↔ the Success Signal shown in "מה מסתכלים לראות" | Target §3 |
| Other | `safetyStopText` reaches First Plan, Pre-Day and Runtime | REF-ONLY §9.2 · **BLOCKED** |

### 2.4 Child Preparation (K04)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Words for the parent to tell the child before the first morning | §3.2 · HOME §6 (REF-ONLY) |
| What must the parent know? | The Bank text, intact | §3.2 |
| What is the one next action? | "ממשיכים" | §3.2 |
| Gating | REQUIRED blocks START until PRESENTED. RECOMMENDED does not gate | REF-ONLY §6 |
| What is the shame risk? | Low. Not tracked, no checkbox, no invalidation | REF-ONLY §6 |
| Other | The same content appears again inside Pre-Day ("לפני הניסיון הראשון") before the first attempt (W1-F2) | §3.6 |

### 2.5 Pre-Day (K05)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Evening and morning preparation for one attempt | §3.6 |
| What must the parent know? | "מחר עובדים על"; "התפקיד שלך"; "מה מכינים"; "מה אומרים מראש"; "מה עושים ברגע עצמו" | §3.6 |
| What is the one next action? | "מתחילים" | §3.6 |
| What is hidden until requested? | "מה לא עושים"; "אם [שם] לא קם" | §3.6 |
| What uncertainty is visible? | NOT IN SOURCE | — |
| What is the shame risk? | The "מה לא עושים" list is a prohibition list; it is collapsed by default | §3.6 |
| What must stay traceable? | Setup items ↔ the G2a facts reported in the evening | REV3 §4 (structural link only) |

### 2.6 Runtime (K06)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | The in-the-moment screen | §3.3 |
| What must the parent know? | "עכשיו" statement (the only yellow) | §3.3 |
| What is the one next action? | **No primary, by design.** Two secondaries: "עדיין אין התחלה" (disabled colour) and "סיום הניסיון" | §3.3 |
| What is hidden until requested? | "מה לא עושים"; "אם [שם] לא קם" (opens when the wait ends) | §3.3, §2.3 |
| What is the shame risk? | Glance use under stress, possibly one-handed | GAP-10 |
| Other | Whether "עדיין אין התחלה" is an inactive control or only styled that way: NOT IN SOURCE (W5 check T-CON-03) | — |

### 2.7 Check-in (K07)

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Retrospective report | handoff v0.2 · REV3 |
| What must the parent know? | "מה רצינו לראות" (beige anchor) | §3.4 |
| What fact is visible? | The parent's own answers (G1–G5) | REV3 §3 |
| What meaning is visible? | **None, by lock.** Evidence usability is invisible on this screen | handoff §2 |
| What is the one next action? | "שומרים" | §3.4 |
| What is hidden until requested? | Groups revealed inline, never as Disclosures | handoff §2 |
| What is the shame risk? | G5 lists parent actions | See W2 |
| What must stay traceable? | Answers → Observation (Contract-level, not parent-facing) | REV3 §8 |

### 2.8 Learning Result: non-evidence

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Close the report without a verdict | REV3 §16 |
| What fact is visible? | "התרגול קרה" | Copy Lock Pack |
| What meaning is visible? | "משהו היה שונה מהתכנון" | Copy Lock Pack |
| What uncertainty is visible? | "עוד לא קובעים מה זה אומר על הילד" | Copy Lock Pack |
| What is the one next action? | "בתרגול הבא ממשיכים עם אותה תכנית." | Copy Lock Pack |
| What is hidden? | `[NEXT_STEP_STATEMENT]` absent; no echo; no K/A/F card | REV3 §16 |
| What is the shame risk? | Low by design. Repetition over many days untested (GAP-11) | — |
| What must stay traceable? | Not parent-facing (GAP-03) | — |

**This is the only screen in the released flow where fact, meaning, uncertainty and one next action are all defined.**

### 2.9 Learning Result: G1 = NO

| §14 question | Answer | Source |
|---|---|---|
| What fact is visible? | "לא היה היום תרגול." | Copy Lock Pack |
| What meaning is visible? | None, by rule. No reason asked, nothing inferred | Log §10 |
| What is the one next action? | "בתרגול הבא ממשיכים עם אותה תכנית." | Copy Lock Pack |
| What is the shame risk? | Low | — |

### 2.10 Learning Result: KEEP / ADJUST / FADE

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Progress decision | Progress §2 |
| Everything else | **NOT IN SOURCE.** No 06 board (D2). W3 is on HOLD | — |

### 2.11 Home H1–H4

| §14 question | Answer | Source |
|---|---|---|
| Why does it exist? | Continuity | REF-ONLY |
| What must the parent know? | `statusText`, `targetText`, `parentRoleLine`, `lastReflection` | REF-ONLY §1 |
| What is the one next action? | `primaryActionId` per card | REF-ONLY §3 |
| What is the shame risk? | `lastReflection` content depends on the Parent-Learning Bank (not supplied) | — |

---

## 3. Information-architecture observations

None of these is a contradiction. They are experience observations only.

| ID | Observation | Classification |
|---|---|---|
| W1-F1 | Before the Learning Result, no screen has a defined place for *what is not yet known*. Initial Picture and First Plan show "already clear / already known" | PX RESEARCH QUESTION. Uncertainty-visibility requirements wait for W4 (HOLD) |
| W1-F2 | The child-preparation content appears on two consecutive screens (Child Preparation, then the Pre-Day block before the first attempt) | PX observation. Possible redundancy or deliberate reinforcement. Testing question. No change proposed |
| W1-F3 | The context-strip progress dots (done / current / future) are navigation chrome (Code Handoff §0). A parent may read them as *progress* | PX RESEARCH QUESTION (connects to "no score" in Progress §1) |
| W1-F4 | Four application states have no defined parent experience (presentation = null) | Existing gap GAP-05 · Product |
| W1-F5 | Open Description's place in the sequence is undefined in supplied sources | Product item P2 |
| W1-F6 | The released flow has exactly one fully-specified fact → meaning → uncertainty → action screen: the non-evidence result | Evidence for the handoff §7 hypothesis being *partially* realised. Input to W4 when opened |

## 4. Not done

No hierarchy proposal, no new screen, no copy, no Safety behaviour.
