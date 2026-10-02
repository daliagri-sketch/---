# W2 · CHECKIN_EXPERIENCE_FRAMEWORK_v0_1_DRAFT

**Workstream:** W2 · Check-in & Retrospective Reporting Experience
**Scope:** the closed REV3 structure only. G1–G5 are not redesigned. Experience risks and testing questions only.
**Status:** DRAFT. NOT SoT. No copy. No new options. No REV3 reopen.

---

## 1. What the parent is asked to do

In the evening, the parent reconstructs one morning opportunity from memory. The report has two parts:

- **The day:** did practice happen, did it happen as planned, and what was different.
- **The behaviour:** what the child did, the most help given, and what the parent did while waiting.

The parent is never told on this screen which answers make the morning usable as evidence (handoff §2, locked).

The fixed structure the experience must work inside:

| Group | Parent question (locked) | Answers | Uncertainty path |
|---|---|---|---|
| G1 | "היה היום תרגול?" | yes / no | — |
| G2 | "התרגול קרה כמו שתכננתם?" | כן / לא / לא ברור לי | "לא ברור לי" (dashed radio) |
| G2a | "מה היה שונה?" | template multi-select | "לא ברור לי מה היה שונה." (exclusive) |
| G3 | "מה ראית אצל הילד?" | `successSignalMet` yes / no + `breakdownObserved` when no | **None by design** (REV3 §3) |
| G4 | "מה הייתה העזרה הכי גדולה שנתת?" | plan-derived levels | — |
| G5 | "מה עשית בפועל בזמן שחיכית או עזרת?" | 9 rows (REV3 §3a) | cannot_recall row → clarification → `insufficient_after_clarification` |

---

## 2. Experience risks

These are risks, not defects. Each one has an owner and a route. **None proposes a structural change.**

### CR-01 · RQ-G3-01 · Recall of the child's outcome

**Classification:** PARENT EXPERIENCE RESEARCH QUESTION + POTENTIAL FUTURE PRODUCT REOPEN REQUEST (Main CT correction).

**Closed structure:**
- G3 has no UNKNOWN row.
- A separate completeness path exists: G5 cannot_recall → clarification → `insufficient_after_clarification` → no Observation (REV3 §3a, §18).

**Question:** what experience risk exists when a parent cannot confidently recall G3?

**Sub-questions to test:**
- (a) How often is G3 recall uncertain in practice?
- (b) When uncertain, does the parent pick yes, pick no, or abandon the report?
- (c) Does the parent know that the completeness path exists? Today it is reached through G5, not G3.
- (d) Is the evening delay (CR-06) the main driver?

**Not proposed:** an UNKNOWN row, a Skip, or any change to G3.
**Owner:** 06 research. Any reopen request goes through Main CT.

### CR-02 · Self-report bias in G4 and G5

**Canonical acknowledgement:** a parent in the loop reports "I said it once"; the schema cannot fix this (Observation §11 Q1).

**Risk:** the rows that change evidence usability (G5 rows 2–6) describe the parent's own deviation. A parent who reads them as admissions may under-report.

**Testing question:** does the G5 list read as a description of what happened, or as a list of mistakes?

**Owner:** 06 research. Wording belongs to Voice.

### CR-03 · Mixed grammatical person inside G5 and across groups

**Observation, locked strings unchanged:**

| Where | Grammatical person |
|---|---|
| Existing G5 rows ("לא הוספתי…", "אמרתי שוב…", "ניגשתי…", "עשיתי…", "חיכיתי…") | First person singular |
| New locked rows: reset ("…הפעלתם שוב…"), V7 ("השתמשתם…") | Second person plural |
| V5c ("…העזרה ניתנה אחרת…") | Impersonal |
| G2 ("שתכננתם") | Plural |
| G4 / G5 questions ("נתת", "עשית") | Singular |

**Possible experience effect:** within one list the parent switches between "I did", "you (pl.) did" and "it was done". This may add reading load. It may also make the newer rows feel like they come from a different voice.

**Classification:** VOICE OBSERVATION, non-blocking. Routed to the Voice owner. No re-lock requested by 06.

### CR-04 · Silent clearing of a G5 answer (B-01 behaviour)

**Closed behaviour (LH-B2-02):** if the parent picks the reset row in G5, then goes back up and selects a C2 fact in G2a, the reset answer is cleared, G5 returns to unanswered, and the CTA becomes disabled (REV3 §3a, T46).

**Risk:**
- The clearing happens below the control the parent just tapped, possibly off-screen.
- The handoff forbids auto-scroll (handoff §2).
- The parent may see a disabled CTA without knowing why.

**Existing mitigation:** `aria-describedby` → `[REQUIRED_HINT]` on the disabled CTA (handoff §7). Whether the hint names *which* group is missing: NOT IN SOURCE.

**Classification:** EXPERIENCE RISK + TECHNICAL AUDIT CHECK (W5 T-DYN-04). No behaviour change proposed.

### CR-05 · Unavailable options without explanation

**Closed behaviour:**
- K2 mutual exclusion: selecting the C1 fact makes the C2 fact unavailable, and the reverse (REV3 §4a).
- UNKNOWN is exclusive (REV3 §7).
- The reset row is unavailable on C2 days.

All use the same unavailable state.

**Risk:** a parent who believes both K2 facts happened cannot select both and gets no reason. Professionally the combination is impossible (Observation §3ג), but the parent may not see it that way.

**Testing question:** do parents notice and understand unavailable rows?

**Classification:** PX RESEARCH QUESTION.

### CR-06 · Delay between the morning and the report

H4 ("צריך דיווח מהניסיון האחרון", REF-ONLY) keeps the report pending with no time limit in the supplied sources. Recall quality is likely to fall as the delay grows. No data exists on the real delay.

**Classification:** PX RESEARCH QUESTION (GAP-09). The number could be measured without collecting new personal data. That is a Product decision.

### CR-07 · The report screen shows no meaning, then the result does

**Locked:** evidence usability is invisible during the Check-in. The non-evidence result then says "משהו היה שונה מהתכנון".

**Risk:** a parent who answered G2 = "כן" but whose G5 answer makes the day non-evidence (for example "אמרתי שוב לפני הזמן") hears "something was different from the plan" after saying it went as planned.

**Check against sources:**
- The derivation is correct (REV3 §5 step 4).
- The locked statement is neutral.
- The experience link between "I said it went as planned" and "something was different" is untested.

**Classification:** PX RESEARCH QUESTION. Not a contradiction.

### CR-08 · Abandoned or insufficient report: what the parent experiences

**Closed path:** clarification → abandoned → no Observation → `PLAN_READY`; measured attempt does not advance (REV3 §18).

**What the parent sees at the end of this path:** NOT IN SOURCE.

**Classification:** PRODUCT INPUT (non-blocking for W2; relevant to W6 when opened).

### CR-09 · Placeholder strings without a locked source

These appear in handoff §7 as semantic placeholders owned by Voice. None is in the supplied Voice locks:

- `[REQUIRED_HINT]`
- `[MORE_QUESTIONS_APPEARED]`
- the footer note

Whether Production renders approved strings: UNKNOWN.

**Classification:** VOICE + TECHNICAL AUDIT (T-SR-05). Non-blocking for W2.

### CR-10 · Length on deviation days

About 2.5 screens at 390 px on a G2 = NO day (handoff §5).

**Risk:** fatigue on the very days that carry the most context.

**Locked:** groups are never collapsed to save space.

**Classification:** TESTING QUESTION only.

---

## 3. Testing questions for the first parent sessions

Collected from §2 and the accepted Gemini Part O questions (Q4, 5, 13, 14, 16, 23, 34).

1. How long after the morning does the report happen? (CR-06)
2. When unsure about the child's outcome, what does the parent do? (CR-01)
3. Does the G5 list read as description or as confession? (CR-02)
4. Does the mixed grammatical person slow reading or change tone? (CR-03)
5. Does the parent notice a cleared G5 answer and a disabled CTA, and understand why? (CR-04)
6. Are unavailable rows understood? (CR-05)
7. How does "something was different" land after G2 = "כן"? (CR-07)
8. Do predefined options steer memory? (Gemini Q5, kept)
9. Does a deviation day feel longer than it is worth? (CR-10)

**Method constraint:** testing must not create Observations or change data. Research consent and method: Product + Main CT.

---

## 4. Not done

No new option, no UNKNOWN or Skip, no reordering, no copy, no change to evidence logic.
