# ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT_REV3 · RETURN NOTE

**To:** Main Control Tower. Next gate: Huri re-audit.
**Status:** DRAFT / NOT YET CANONICAL / NOT FOR IMPLEMENTATION.
**Not done:**
- Not published to Drive; no index updated.
- v0.10 is not superseded.
- No repo references changed.
- Runtime `contractVersion` unchanged.
- No code changed.

## 1. Identity

| File | Bytes | SHA-256 |
|---|---|---|
| `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT_REV3.md` | 179,779 | `34dba764a84c0aba9738c58802400e3d8de71a5630474230c7ac706753f76073` |
| `audit-evidence/contract-v0_11/v0_10_repo_to_v0_11_REV3.diff` | — | `89c65b30ae3f7eeb60f46c03c20a35c78807f2bc337e3b83b8c8f9f74619c961` |
| `audit-evidence/contract-v0_11/v0_11_REV2_to_REV3.diff` | — | `70f4b15a219d5b34493c80f3c1b329c7268ca40b63314d5830537ad0c07a9c81` |

- REV2 is kept unchanged as history: `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT.md`, SHA-256 `7b653b83…`.
- **Sync sources:**
  - Packet REV3 (Drive `1jqsjgO1…`), canonical per `RELEASE_RECORD_MORNING_2026-10-02_REV3`.
  - Observation v0.10, Progress v0.3.3 and Fact Set v0.2.
  - The released `schemas.ts`, reducer and adapter at `4499671`.

## 2. Huri required fixes

| # | Fix | Status | Where |
|---|---|---|---|
| 1 | REV3 body sync: §9, §28, §30, §42, §45, §58, §61, §62 | **CLOSED** | Below |
| 2 | §4.3 body types | **CLOSED** | §5, §10, §12, §15, §16.1, §19–§21 |
| 3 | §24.5: RUNTIME VALIDATION: CURRENTLY EXISTS / COPY OWNER: VOICE / PRODUCT PRESENTATION | **CLOSED** | §24.5 |
| 4 | Location of the "ProgressProjection only with `progress_result`" rule | **CLOSED** | §44, E1–E7; §24.5 points to §44 |
| 5 | DOCUMENT VERSION v0.11 / WIRE `"0.10"` + follow-up | **CLOSED** | Header, §43, §66 |
| 6 | §63: remove the v0.9 `bankVersion` rule; record the released metadata | **CLOSED** | §63, §7.1 |
| 7 | §67.1: table formatting, and every sync listed | **CLOSED** | §67.1, 27 rows (1–26 + 15a). The table check found no broken table |
| 8 | OD-P1-09 precision | **CLOSED, with a discrepancy noted** (§3 below) | §24.5, §61 |
| 9 | Observation citation updated to v0.10; line references | **CLOSED** | §4.3 item 13 |

### REV3 sections synchronized

| Section | Content |
|---|---|
| §9 + new §9.1 | `multi_choice`; question refs; `ContextFactId`, `PracticeAsPlanned`, `NotHeldReason`; 12 report refinements |
| §28 | `skipped_setup` removed; `invalidReason` gains `cue_not_received`, `planned_change_response`, `opportunity_unknown`; `practiceAsPlanned`, `contextFacts`, `cueResetAfterSeen`, `ranDifferentPlan`; refinements; derivation order (§5) |
| §30 | `ruleFiveWindowRefs`; provenance rules; real calculation; Rule 5 table; measured attempt, kept separate |
| §42 | `no_practice` and its closure rule |
| §44 | Released envelope refinements E1–E7 |
| §45 | `practice_not_occurred` → null; presence of observation, progress and mismatch |
| §58 | Registry of every released addition |
| §61 | Target Observation routing; `practice_not_occurred`; task mismatch; `keep_declared_task`; `REPORT_RUNTIME_NO_START`; `stop_measurement`; ADJUST coverage gap (LH + K2); recheck |
| §62 | #29, #30, #32, #33 and #34 replaced; R1–R12 added |

### §4.3 body types

| Section | Content |
|---|---|
| §5, §10 | `REPORT_RUNTIME_NO_START`; `EndRuntimeCompletionKind` + `stop_measurement`; `allowedCompletionKinds` |
| §12 | `InterventionId` with `DR-B1-01`; `SETUP-DR-CLOTHES-ORDERED`; `post_measurement_completion`; terminal `action`; `RuntimeCursor`, documented as engine state, not wire |
| §15, §16.1 | `resolvedPostMeasurementCompletion`; `resolvedGuardrail` nullable |
| §19–§21 | `safetyStopText`; `guardrailText` nullable; Runtime `ifNotStart` may be `[]` |
| §16 | K2 forbidden tokens |

## 3. Discrepancy on fix 8 (OD-P1-09)

The instruction says `RECHECK_AFTER_FADE` succeeds on the released golden path, and that the dead end is at the next planning step. That is accurate for the **fixture FADE path** only.

**Fixture FADE path:**
- The path is F20 → F21, as configured in `createEngineAdapter.ts` L41.
- `RECHECK_AFTER_FADE` → PROCEED → `TARGET_PROPOSED`, with `RESOLVE_PLANNING` offered.
- 06 established this from source only (SOURCE-INSPECTED). 06 did not run this path.

**Public path, RUNTIME-VERIFIED (RT-01):**
- `PUBLIC_DOWNSTREAM_SCENARIO_IDS` contains no recheck scenario (F21).
- Clicking the button returns `technical_error`.
- The screen stays on the `TARGET_RECHECK` title, "בודקים את הצעד הבא", with zero actions.
- Evidence: `390/A38` → `390/A39` and `results-A-390.json`.

The contract records both, each with its verification class. The question for Main CT is which path "released golden path" refers to. The text is ready for either answer.

## 4. Gaps recorded, not resolved

1. **§16, forbidden tokens:** the runtime list differs from the contract list.
   - The runtime blocks `B2`. The contract lists `scope_resolution`, which the runtime does not block.
   - The runtime matches the removed v0.8 sentence in full; the contract lists only a fragment.
   - → TECHNICAL AUDIT REQUIRED. No rule was changed.
2. **§7.1 / §63, released LH metadata:** the released `professionalSourceRefs` cite FIRST_PLAN / PRE_DAY at `0.4`. §7.1 requires v0.5. This is recorded, not changed.
3. **§24.5, copy validated at runtime:** the same situation exists for `HomeProjection.statusText`, the Ladder labels and the Safety literals. Recorded only.
4. **§62:** the duplicate numbering of invariants 49–52 dates from v0.9. It was left as is.

## 5. Summary

| | |
|---|---|
| SEMANTIC CHANGES | **NONE.** Every addition describes released or canonical truth (REV3 / `4499671`) |
| CODE CHANGES | **NONE** |
| READY FOR HURI RE-AUDIT | **YES** |

**Diffs (changed lines):**

| Comparison | Lines |
|---|---|
| v0.10 repo → REV3 | 611 (55 removed, 556 added) |
| REV2 → REV3 | 468 |
