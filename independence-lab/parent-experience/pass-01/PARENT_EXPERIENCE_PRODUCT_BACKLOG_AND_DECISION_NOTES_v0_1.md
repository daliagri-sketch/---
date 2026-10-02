# PARENT_EXPERIENCE_PRODUCT_BACKLOG_AND_DECISION_NOTES_v0_1

**Status:** DRAFT. Records Main CT closures and classifications from the source-trace review (02.10.2026).
- This file is 06's working backlog. **It does not edit OPEN_DECISIONS_REGISTER_v1_0 or any Drive source.** Moving these items into the canonical register is a Main CT / Project Manager action.
- No code, copy or Product truth is changed.

---

## 1. Product backlog entries

### PB-01 · ADJUST dead end on LH-B2-02 (RT-02)

| Field | Content |
|---|---|
| Classification (Main CT) | Coverage-gap truth = **VALID**. Dead-end presentation = **PRODUCT ROUTING GAP** |
| Runtime evidence | ADJUST → "בדיקת תכנית חלופית" → "אין עדיין תכנית מתאימה", zero actions (`390/D16`, `390/D17`) |
| Source | Contract v0.10 §37.1 / §37.2 (identical in both copies). No LH replan in Bank v0.10 / v0.9. KG-007 "NOT FOR ENGINE" |
| Note | REV3 §23 item 2 names K2 only. No register item for LH existed |
| Required Product decision | **When no approved alternative plan exists after ADJUST, what parent-visible action remains available?** |
| Not to do | No alternative plan invented. No Code assignment |
| Status | OPEN · Product |

### PB-02 · ADJUST dead end on K2 / DR-B1-01 (RT-02)

| Field | Content |
|---|---|
| Classification (Main CT) | Coverage-gap truth = **VALID** (REV3 §23 item 2). Dead-end presentation = **PRODUCT ROUTING GAP** |
| Runtime evidence | Not run by 06. Source-confirmed: `k2Fixtures.ts` "K2-ADJUST-GAP", `actions: []` |
| Required Product decision | The same question as PB-01. One decision may cover both |
| Status | OPEN · Product |

### PB-03 · FADE dead end (RT-01)

| Field | Content |
|---|---|
| Status | Known OD-P1-09, now runtime-verified. **BLOCKED FOR IMPLEMENTATION** pending the FADE → TARGET_RECHECK Professional / Product workstream |

---

## 2. RT-03 · Product decision note

**QUESTION:** Should "אם עדיין אין התחלה" become available or open when the wait period expires?

| | |
|---|---|
| **Current runtime behaviour** (`4499671`, verified) | After the 60 s wait, "עדיין אין התחלה" becomes enabled. The disclosures "מה לא לעשות" and "אם עדיין אין התחלה" stay **closed**. The parent must open them. No hint is shown. Evidence: `390/W01-runtime-after-wait.png` |
| **Code Handoff description** (v1.0 FINAL §2.3, §3.3) | "Default open or closed state: unchanged from current Product behaviour. This is not a design decision. Runtime "אם דן לא קם" opens when the wait ends; that is an existing Product action." Hint: "נפתח כשההמתנה נגמרת" |
| **Later controlling Product truth** | **None.** No later handoff, REV3 section or contract section defines disclosure open / closed state. Contract v0.10 defines only the wait gate for "עדיין אין התחלה" (repo-only §4.3 item 7) and `ifNotStart` as resolved content. Code comment: "Default closed, as the merged disclosure was". No test covers auto-open |
| **Parent Experience consequence** | When the wait ends and the child has not started, the next step is behind a closed disclosure. A parent who is holding a child or under time pressure may not open it, and may fall back on their own response, which the plan is trying to replace. If it opens, the next step is visible at the moment it is needed. The screen changes without a tap, and the "עכשיו" card may lose emphasis |

**06 does not choose.** Owner: PRODUCT. Then Presentation (06) to define the visual treatment, and Code to implement.

---

## 3. RT-09 · status

- **CONFIRMED IMPLEMENTATION FIDELITY ISSUE** against PRODUCT_ENTRY_FLOW_v0_4 §6 ("עברית ניטרלית" when an identity field is missing).
- Direction: neutral Hebrew first. No new required personal data.
- Wording for Voice approval is in `RT-09_NEUTRAL_HEBREW_WORDING_PROPOSAL_v0_1` (6 strings; 1 UI-owned, 5 Bank-sourced and needing a Professional check).
- **Code: not assigned** until the wording is approved.

---

## 4. RT-10 · "בקרים שנספרו" · HOLD

- **Status:** AMBIGUOUS · HOLD. No copy change.
- **Search result:**
  - The **Parent-Learning Bank LH-B2 v0.3 document was not found** on Drive (keyword and title searches) or in the repo `docs/`.
  - The only record is GitHub PR daliagri-sketch/maabadat-haatzmaut#1 ("Parent Learning PR 1: Mini Parent-Learning Bank v0.3", opened 25.09.2026, closed). Its body says "13 approved reflections from Mini Parent-Learning Bank v0.3", including `KEEP.insufficient_evidence` and `ADJUST.support_insufficient`. It names `PROGRESS_KEEP_ADJUST_FADE_v0_2` as the Progress source.
  - That is **before** Progress v0.3 (30.09), which added S13 ("אסור להציג להורה את הבקרים האלה כ"לא נחשבו"").
- **No later controlling Voice / Progress source** addresses these lines.
- **Needed to close:** the bank document (or the approval record behind PR #1), and then a Voice reading against Progress v0.3.3 S13 / §1.

---

## 5. RT-11 · "היום" · closed classification

| | |
|---|---|
| **Product intent (Main CT, CLOSED)** | "היום" is a **status label**, not a navigation control. No destination is defined |
| **Classification** | **PRESENTATION FIDELITY ISSUE.** It must not look interactive |
| **Source of the visual cue** | 06's own Code_Handoff_Morning_v1_0_FINAL §2.5 specifies it as "a text link … underlined". The implementation follows that styling. **The correction therefore starts in 06's presentation source:** §2.5 needs an amendment that styles "היום" as a non-interactive label |
| **Proposed next step** | 06 prepares a presentation amendment (styling only, no copy change), to be returned to Main CT before any Code task |
| **Reopening as navigation** | Only through an explicit Product decision |
