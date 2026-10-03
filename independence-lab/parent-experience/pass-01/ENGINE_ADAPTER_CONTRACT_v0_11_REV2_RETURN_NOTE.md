# ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT — REV2 · RETURN NOTE

**To:** Main Control Tower. Next gate: Main CT + independent consistency audit.
**Status:** DRAFT / NOT YET CANONICAL / NOT FOR IMPLEMENTATION.
**Not done:**
- Not published to Drive and not added to any index.
- v0.10 is not superseded.
- No repo references changed.
- Runtime `contractVersion` is still `"0.10"`.
- No code changed.

---

## 1. Identity

| File | Bytes | SHA-256 |
|---|---|---|
| `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT.md` (REV2) | 150,016 | `7b653b8386fe368e702ff46bd4cbaf343825678a01150bc3c1855a6c161e565d` |
| `audit-evidence/contract-v0_11/v0_10_repo_to_v0_11.diff` | — | `453e8581eb97514841f5da6a528a3bec6e13ab11b44763939172f6b5399ef07b` |
| `audit-evidence/contract-v0_11/v0_10_drive_to_v0_11.diff` | — | `43e95f4fa92165d351a25a7ec12ec503b3ec098351567addf9cca9beae82d1df` |

**Base documents compared:**

| Copy of v0.10 | Bytes | SHA-256 |
|---|---|---|
| repo | 137,950 | `a42c7295…` |
| Drive | 130,586 | `bf23c78e…` |

The diffs were run against LF-normalised copies.

**REV1 (superseded by REV2):** commit `45e5386`, SHA-256 `12ce6551…`.

## 2. REV2 corrections (Main CT review, 03.10.2026)

| # | Correction | Where | Type |
|---|---|---|---|
| 1 | `practice_not_occurred` added in three places: the family in §39, the `PracticeNotOccurredResult` type in §40 (`{kind, pendingCheckinRef}`, the same as `schemas.ts` L717), and a member in the §41 union. Recorded in §67.1 row 13 as **CONTRACT SYNCHRONIZATION WITH EXISTING CANONICAL / RELEASED TRUTH**. No semantic change. No presentation behaviour added | §39, §40, §41, §65, §67.1 | body sync |
| 2 | `bankVersion = "0.6"` kept. An explicit note block was added: RELEASED METADATA VALUE 0.6 · CURRENT PROFESSIONAL SOURCE VERSION v0.7 · **PARENT-VISIBLE SEMANTIC DIFFERENCE: NONE FOUND** · "v0.11 is not blocked by the metadata string alone" | §4.3 item 13, §66, §67.1 row 3 | note |
| 3 | Copy: every released string in the contract is now marked `RELEASED PRESENTATION VALUE`, plus a header line "the contract defines semantics, not final Voice locks" | header, §4.3 item 7, §4.4, §24.5, §66, §67.1 rows 4–5 | wording |

Adding the type to §40 goes slightly beyond "§39 and §41 only". **Why:** without the type, the §41 member would point to a type that is not defined anywhere. The type copies the released schema exactly.

## 3. Basis for "PARENT-VISIBLE SEMANTIC DIFFERENCE: NONE FOUND"

**Sources compared:**
- Full diff of Drive Bank `dressing_bag_items` v0.6 (`1QDa4LBx…`) against v0.7 (`10Dieis2…`).
- KGR v0.6 (`173gYuUS…`), delta line.

**What did not change in DR-B1-01:**
- v0.7's own delta line says: "אין שינוי בלוגיקה המקצועית של אף תבנית, ב-copy הנעול של K2, או בסטטוס ההפעלה".
- No change to setup, moves, waits, escalation chain, completion, guardrail or copy.

**What changed (evidence classification only):**
1. "הבגדים לא הוכנו בערב" is now V6b, not a parent deviation.
2. A new `planned_change_response` row was added (Observation v0.8 §3ג, KG-015).

**Why this is not new to Production:**
- Both rules already exist in the released runtime as the REV3 families C2 (`cue_not_received`) and C1 (`planned_change_response`), in `schemas.ts` L124 and L584.
- So v0.7 adds no behaviour that is new relative to `4499671`.

**KGR v0.6:**
- KG-002, KG-009 and KG-011, the ones cited in §4.3 item 13, are marked "ללא שינוי".
- KG-015 and KG-016 are new. KG-010 is closed.

**Limit:** 06 did not run the K2 Check-in path itself. The finding rests on the sources and the code.

## 4. All reconciliation notes (cumulative, REV1 + REV2)

1. **Provenance:**
   - §4.3, §4.4 and §24.5 were governance-ratified on 03.10.2026, based on released behaviour. This is not a historical approval.
   - They entered through PR #13, #16 and #20, without a Drive decision.
2. **§24.5 is ratified for semantics only.**
   - ADJUST label: COPY OWNER VOICE / PRODUCT PRESENTATION · SOURCE TRACE REQUIRED: YES. The released "משנים את התכנית" is unchanged.
   - No new Voice lock is created.
3. **ProgressProjection** is carried in `envelope.presentation` of `progress_result`. `ProgressResult` has no presentation field. This is a clarification only.
4. **OD-P1-09** (FADE → recheck → technical error, RT-01) is noted in §24.5. It is not resolved.
5. **Body sync:**
   - `declaredTask` in SUBMIT_SCENE.
   - The two support actions in TargetProposal and ActiveTarget.
   - ProgressProjection in §22.
   - MorningTaskMismatch and the `declared_task_kept` branch in §39–§41.
   - `practice_not_occurred` in §39–§41.
6. **Citations:** Bank v0.7 and KGR v0.6. Runtime metadata stays `0.6`.
7. **§67** rows 13–15 and **§67.1** (13 rows) record every change.
8. **Open items not resolved by the contract:**
   - OD-P1-09.
   - PB-01 / PB-02 (no parent action after ADJUST coverage gap).

## 5. Consistency notes for the independent audit

These are out of scope for REV2 and were **not changed**:
- **§42** `PendingCheckin.status` does not list `"no_practice"`. The runtime closes a PendingCheckin with that status after `practice_not_occurred` (`schemas.ts` L568).
- **§6** ApplicationTransition and **§45** Presentation Presence were not checked against `practice_not_occurred`.
- **§50–§64** test requirements were not compared with the released test suite.

## 6. Diff summary

| Comparison | Changed lines (`<` / `>`) |
|---|---|
| v0.10 repo → v0.11 REV2 | 185 |
| v0.10 Drive → v0.11 REV2 | 249 |

Every hunk is covered by §67.1 rows 1–13. **There are no semantic additions beyond approved or released truth.**
