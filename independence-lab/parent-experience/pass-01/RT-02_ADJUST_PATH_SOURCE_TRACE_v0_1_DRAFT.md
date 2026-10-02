# RT-02_ADJUST_PATH_SOURCE_TRACE_v0_1_DRAFT

**Status:** DRAFT. Read-only source trace. NOT SoT. No alternative plan is invented.
**Runtime fact (verified on `4499671`, LH-B2-02, age 5):**
1. Four valid off-target days → ADJUST ("משנים את התכנית").
2. "בדיקת תכנית חלופית" → "אין עדיין תכנית מתאימה" / "כרגע אין תכנית חלופית מאושרת."
3. **Zero actions.**

**Contract note:** §37, §24.2 and §24.4 are identical in the Drive and repo copies of contract v0.10. This trace does not depend on the unresolved canonical-copy question.

---

## 0. Sources common to both templates

**Contract v0.10 (both copies):**
- §37.1: "`adjust_replanning` | **REPLANNING** | REPLAN_AFTER_ADJUST: אין template חלופי".
- §37.2: "**לא חוקי** מ-`adjust_replanning`: ה-Target הפעיל נשמר ולא נסגר, `allowedNextActions = []`."
- §24.2 rule 2: "`REPLANNING + REPLAN_AFTER_ADJUST → planning_resolved → PLAN_READY`", only when a replan template exists.
- No section assigns `RETURN_HOME` or any other action to `COVERAGE_GAP(adjust_replanning)`.

**Professional sources:**

| Source | What it says |
|---|---|
| PROGRESS v0.3.3 §2 | ADJUST → "Planning נפתח מחדש עם reason. Progress לא בוחר מה משתנה" |
| PROGRESS v0.3.3 §5 | Kinds of change per reason (+1, prompt change, environment, Bottlenecks, Capability recheck, parent layer) |
| PROGRESS v0.3.3 §9 err 8 | "Adjust = +1 אוטומטית" is forbidden |
| LADDER v0.5 §2 | Planning ADJUST = one level; it creates a new Intervention Object |
| MATRIX v0.7 | **No ADJUST / replan rows** for any M / MX row |
| KG REGISTRY v0.6, KG-007 | "GAP CONFIRMED · BRANCH = DRAFT · NOT FOR ENGINE". "בגיל 6-7 זה מבוי סתום: ADJUST מ-LH-B2-02 מוביל ל-4→3, ואין תבנית" |
| KG v0.6 §5 | "BANK_COVERAGE_GAP אינו authoring invitation בזמן runtime" |

**Product sources:**
- REV3 §15: no post-ADJUST routing.
- **REV3 §23 item 2 (K2 only):** "No K2 replan source exists, so it leads to the existing COVERAGE_GAP. Stays in the Product backlog."
- OPEN_DECISIONS_REGISTER v1.0: **no ADJUST item.** The only analogue is OD-P1-09 for FADE.

---

## 1. LH-B2-02 (leaving_home, sand timer) · also LH-B2-01

**EXPECTED CANONICAL ROUTE**
1. ADJUST → REPLANNING → `REPLAN_AFTER_ADJUST`.
2. Then `planning_resolved` if a replan template exists; otherwise `coverage_gap(adjust_replanning)` with `allowedNextActions = []`.
3. Professional sources name the *kinds* of change. **No source names the LH-B2-02 replan.**
   - A +1 (3→2 becoming 4→3) would correspond to LH-B2-01 for age 5.
   - No source authorises the ADJUST → LH-B2-01 mapping. KG-007's +1 branch is DRAFT / NOT FOR ENGINE.

**CURRENT RUNTIME ROUTE**
1. `progressEvaluator` → ADJUST(`support_insufficient`).
2. `boundaryReducer.ts:410–412` → REPLANNING with `[REPLAN_AFTER_ADJUST]`.
3. The only registered replan scenario is F19 "ADJUST Bank Gap" (`createEngineAdapter.ts:30` includes it publicly; no `commandMatch`). → `coverage_gap(adjust_replanning)`.
4. `coverageGapActions()` returns `[]`.
5. **No return / continue path:**
   - `returnHome()` works only from PLAN_READY / ATTEMPT_IN_PROGRESS / PENDING_CHECKIN.
   - `RETURN_HOME` is produced only after a terminal Safety stop.
   - A "חזרה" label for coverage_gap exists in `ApplicationRenderer.tsx:100`, but that action is never produced.
6. **LH-B2-01:** not reachable on the public path. Age 4 → target_creation gap; ages 5–7 → LH-B2-02. If reached, the same F19 route would apply.

**ACTIVE BANK COVERAGE**

| Bank | ADJUST / replan content |
|---|---|
| Active INTERVENTION_BANK_leaving_home_B2 v0.10 (Drive) | None. The only ADJUST mention is LH-B2-02 `after_escalation_2`: "… זה מספיק לתצפית ול‑Adjust". It justifies ADJUST but defines no replan |
| Repo copy v0.9 | None. Shipped plans cite `LH-B2-02@0.9`, one version behind active |

**IS "NO ALTERNATIVE PLAN":**
- **No plan:** **CORRECT COVERAGE GAP PRESENTATION** (Contract §37.1 trigger met; KG §5 forbids runtime authoring).
- **No parent action at all:** **PRODUCT ROUTING GAP.** The code matches Contract §37.2 exactly, so it is **not a code defect**. No Product source accepts, backlogs or defines the parent's next step for LH. REV3 §23 item 2 names K2 only.

**IMPLEMENTATION READY: NO**

---

## 2. K2 / DR-B1-01 (dressing, B1 4→3) · bag_items

**EXPECTED CANONICAL ROUTE**
- Same Contract route as §0. Same generic Professional options. MX-1 has no ADJUST row.
- Active Bank v0.7, DR-B1-01: no ADJUST / replan field.
  - +1 would be 5→4, which has no template.
  - DR-B1-02 (3→2) is DRAFT / inactive, and "תבנית DRAFT אינה נשלפת".
- **Product explicitly accepts the gap:** REV3 §23 item 2, "leads to the existing COVERAGE_GAP. Stays in the Product backlog."

**CURRENT RUNTIME ROUTE**
- `k2Fixtures.ts:168–170` "K2-ADJUST-GAP" → `coverage_gap(adjust_replanning)`, `actions: []`. Comment at L101 cites REV3 §23 item 2.
- Reachable on the public path when the dressing scene is covered.
- Same reducer, same empty actions, same copy as LH.
- No DR-B1-01 ADJUST reflection exists.
- **Not runtime-verified by 06.** The K2 path was not run.

**ACTIVE BANK COVERAGE**

| Bank | ADJUST / replan content |
|---|---|
| Active dressing_bag_items v0.7 (Drive) | None for K1–K5 |
| Repo copy v0.6 | None. Shipped code cites v0.6, one version behind active |

**bag_items (K3 / K4 / K5):** DRAFT / inactive in v0.7. Not reachable. **Not applicable.**

**IS "NO ALTERNATIVE PLAN":**
- **No plan:** **CORRECT COVERAGE GAP PRESENTATION**, explicitly accepted by REV3 §23 item 2.
- **No parent action at all:** **PRODUCT ROUTING GAP.** It is acknowledged in the backlog, but REV3 does not say whether the backlog covers the zero-action dead end. **Not a code defect.**

**IMPLEMENTATION READY: NO**

---

## 3. Cross-checks and side findings

1. **REV3 §23 item 2 vs reality.** The item names K2 only. The shipped LH public path has identical behaviour, and `createEngineAdapter.ts` states LH ADJUST is "now reachable through the real calculation". **No Product source records the LH case.** Either item 2 is read as covering LH, or a register item is missing. → Governance.
2. **V0_10_KNOWN_LIMITATIONS** (non-authoritative):
   - §4 calls the adjust_replanning terminal "Intentional terminal (by Contract; no action is hidden)".
   - **§6 is stale for `4499671`:** "ADJUST and FADE are reachable only through the non-production URLs … The public intake always returns KEEP". That was verified on `47e7efd`, before REV3's real Progress calculation. Runtime confirms ADJUST and FADE are publicly reachable.
3. **Bank versions.** Shipped plans cite LH v0.9 and K2 v0.6; the active banks are v0.10 and v0.7.
   - Both deltas were described as making no move / wait / escalation change (LH v0.10 delta line).
   - Whether any parent-facing difference exists was not traced.
   - → TECHNICAL / Governance note, not an RT-02 finding.
4. **ADJUST label.** Code "משנים את התכנית" vs repo-only contract §24.5 "צריך להתאים את התכנית". Held under the contract provenance question.

---

## 4. Decision needed (Product, not 06)

| Question | Owner |
|---|---|
| What the parent is allowed to do after `coverage_gap(adjust_replanning)` (for both LH and K2) | Product → Contract change |
| Whether REV3 §23 item 2 covers LH, or a new register item is needed | Governance / Main CT |
| The replan content itself: which template or plan follows ADJUST per reason | **PROFESSIONAL** (KG-007 resolution: "professional validation ממוקד לפני כל rule במנוע") |
