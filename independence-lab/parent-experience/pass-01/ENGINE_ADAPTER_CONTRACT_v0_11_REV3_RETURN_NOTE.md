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
| `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT_REV3.md` | 180,303 | `1b0a09f9dd5faf73eff269a5387f9b7a3eab1ef5fb300b4c6e1f4752371821c8` |
| `audit-evidence/contract-v0_11/v0_10_repo_to_v0_11_REV3.diff` | — | `eaaf7114d86318d41b1b47fb749130eca80f2f1dd660eddbbf70f1a02a73d9c6` |
| `audit-evidence/contract-v0_11/v0_11_REV2_to_REV3.diff` | — | `1b095d86e58e270b119f952e69983339f8506e990d0bbf9137d2ab3b9ffb39f1` |

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
| 8 | OD-P1-09 precision | **CLOSED** (path wording per Main CT clarification, §3 below) | §24.5, §61, §66, §67.1 |
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

## 3. OD-P1-09: two separate paths (Main CT clarification, applied)

The contract no longer uses "released golden path". It records two separate paths:

**PUBLIC PARENT PATH.** This is the authoritative Parent Experience runtime finding. RUNTIME-VERIFIED, RT-01, `390/A38` → `390/A39`.
- FADE screen.
- The parent presses the recheck CTA.
- No public downstream recheck scenario exists.
- `technical_error`.
- The state stays `TARGET_RECHECK` with zero actions.

**FIXTURE / DEMO PATH** (SOURCE-INSPECTED):
- F20 → F21 → `TARGET_PROPOSED`.
- `RECHECK_AFTER_FADE` succeeds on this path.
- The failure comes later, at planning resolution.

**Classification:** PRODUCT ROUTING / COVERAGE GAP. This is not a REV3 semantic contradiction. No Code fix.

**Where it is recorded:** §24.5, §61 (one row per path), §66 and §67.1 row 7.

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
| v0.10 repo → REV3 | 612 (55 removed, 557 added) |
| REV2 → REV3 | 471 |
