# ENGINE_ADAPTER_CONTRACT_v0_10_PROVENANCE_DELTA

**Status:** DRAFT. Read-only provenance comparison. NOT SoT.
**CANONICAL COPY: UNRESOLVED.** Escalated to Main Control Tower / Governance. 06 does not decide which copy is canonical.
**Consequence for 06:** P6 and P13 are **not** treated as closed on the strength of the repo-only §24.5 until canonicality is resolved.

---

## 1. File metadata

| | DRIVE copy | REPO copy |
|---|---|---|
| Location | Drive fileId `1YUivC5JjQNolvufnreSlijTcJD_jgPGa`. Folder "contract" (`1Si0_5HMW28m3xkkI2TPU_jgj6rSsemP0`), path per PROJECT_FILE_INDEX: `ASTRA_BUILD_PACK/01_PRODUCT/contract` | `maabadat-haatzmaut/docs/authoritative/ENGINE_ADAPTER_CONTRACT_v0_10.md` at commit `4499671` |
| Size | 130,586 bytes (125,318 after CRLF→LF) | 137,950 bytes |
| Lines | 5,268 | 5,345 |
| sha256 | `bf23c78e…baa1a4` | `a42c7295…ffd036` |
| Created / modified | 2026-09-26T22:34:33Z / same (unedited since upload). Earlier Drive revisions not checked | Unknown: the clone is shallow; the only visible commit is `4499671` (02.10.2026) |
| Owner | daliagri@gmail.com | — |
| Header status | `LOCKED — A0/D0 v0.10` · "26.9.2026 · v0.10 Delta: ראו §67" | Same, **plus line 7:** "27.9.2026 · K2 activation delta: ראו §4.3 … PR-B Morning moment selection: ראו §4.4." **No header line for PR-F** |

## 2. Section inventory and delta

- **Headings:** DRIVE has 189, REPO has 192. All DRIVE sections (§0–§68) exist in REPO.
- **Full diff after normalising line endings:** 3 lines changed and 79 lines added in REPO. **Nothing exists only in DRIVE.**

| Change | Where | Content |
|---|---|---|
| Added in REPO | Header line 7 | K2 activation (27.9) + PR-B pointer |
| Changed | §4.2 registry, K2 row | DRIVE: "Bank DRAFT · **not implementation-ready / not active**". REPO: "**ACTIVE · implementation-enabled** (DR-B1-01, Bank v0.6, KGR v0.5; §4.3)" |
| Changed | §4.2 bullet | DRIVE: K1–K5 Bank is DRAFT. REPO: K2 activated (§4.3) |
| **Added in REPO** | **§4.3 K2 ACTIVATION DELTA** (13 items) | DR-B1-01, chain / terminal, `safetyStopText`, `runtimeCursor`, `REPORT_RUNTIME_NO_START` and the wait gate, `stop_measurement`, `allowedCompletionKinds`, the `ifNotStart` rule, identity boundary |
| **Added in REPO** | **§4.4 PR-B DELTA** (morning moment selection) | `declaredTask`, mismatch clarification |
| Added in REPO | §5 AllowedNextAction union | `REPORT_RUNTIME_NO_START` |
| **Added in REPO** | **§24.5 Target Support Actions ו-ProgressProjection (v0.10 PR-F)** (43 lines) | `startingSupportAction` / `targetSupportAction`, `ProgressProjection`, `fadePresentation`, KEEP / ADJUST / FADE labels, post-FADE rule |
| Identical | Everything else | Including §22, §24.1–§24.4, §37, §65, §67, §68 |

## 3. §24.5 presence

| Search term | DRIVE | REPO |
|---|---|---|
| "24.5" | 0 | 1 |
| `ProgressProjection` | 0 | 7 |
| `fadePresentation` | 0 | 2 |
| "PR-F" | 0 | 1 |
| `startingSupportAction` | 0 | 3 |
| §4.3 / §4.4 headings | absent | present |
| `DR-B1-01` | 0 | 7 |
| `REPORT_RUNTIME_NO_START` | 0 | 3 |

**Internal inconsistencies:**
- §67 (the v0.10 delta table, 12 rows) is identical in both copies and lists none of §4.3 / §4.4 / §24.5.
- §22 `PresentationPayload` is identical in both copies and **does not include `ProgressProjection`**. Inside the REPO copy this conflicts with §24.5 ("`progress_result.presentation` הוא `ProgressProjection | null`").

## 4. References from other documents

| Document | Status / date | Points to |
|---|---|---|
| PROJECT_FILE_INDEX_v1_0 | ACTIVE, 02.10.2026 | **DRIVE** by ID ("Canonical location; Drive ID preserved") |
| CODE_CLAUDE_IMPLEMENTATION_WORKSPACE_INDEX | ACTIVE, 02.10.2026 | **DRIVE** link |
| HOURI workspace index (01.10 version) | 01.10.2026 | **DRIVE** link. The 02.10 version was not read in full |
| `*_RECONSTRUCTED` files (HOME, PRESENTATION, RUNTIME) | REFERENCE ONLY, 26.09 | Not determinable |
| SC1_TARGET_v0_1_DRAFT | DRAFT, 28.09 | Names the PR-F concept, no file citation |
| RELEASE_RECORD (REV3), OPEN_DECISIONS_REGISTER, MASTER_CONTROL_TOWER_HANDOFF, REV3 packet, ACTIVE_SOT_INDEX | Canonical governance | **No reference** to the contract file or its sections. OD-P1-09 names a §24.5 concept without citing it |
| Repo `BUILD_PACKET_v0_9_FINAL_REVIEW.md:3` | SUPERSEDED | "build instructions come per-PR against the v0.10 contract". Repo-relative, copy not determinable |
| Repo `docs/engineering/V0_10_KNOWN_LIMITATIONS.md:23` | NON-AUTHORITATIVE | "Per Contract §24.5…". Cites a **REPO-only** section |

## 5. Which copy the implementation was built against

Code at `4499671` cites and implements all three REPO-only sections:

| REPO-only section | Evidence in code |
|---|---|
| **§24.5 PR-F** | `copy/progressCopy.ts:1`, `copy/targetSupportActions.ts:4`, `engine/contract/schemas.ts:318, 501, 509, 520, 790`, `progress/ProgressView.tsx:7`, `fixtures/presentation/progress.ts:7`, `FixtureEngineAdapter.ts:339`, `fixtures/state/invariants.ts:115`; tests `pr-f-progress-fade.test.tsx` |
| **§4.3 K2** | `fixtures/runtimeCursor.ts:5` ("Contract v0.10 K2 delta"), `schemas.ts:74, 239, 345`, `scope.ts:11`; `REPORT_RUNTIME_NO_START` in 10 source files; test `k2-dr-b1-01.test.ts` |
| **§4.4 PR-B** | `schemas.ts:228, 702, 739`, `morning/moments.ts:4`, `intake/morningTask.ts:4`, `copy/morningMoments.ts:3`, `demo/DemoExperience.tsx:46`; test `pr-b-morning-moments.test.tsx` |

**Factual conclusion:**
- The released code implements sections that exist **only in the REPO copy**.
- The DRIVE copy, which every Drive governance index marks ACTIVE, still describes K2 (DR-B1-01) as "not active". REV3, the Fact Set and the Product Decisions Log treat K2 as active.

## 6. Limitations

- The clone is shallow. When and by whom §4.3, §4.4 and §24.5 were added cannot be established. §4.3 / §4.4 are dated 27.9 in the REPO header; §24.5 is undated.
- Drive revision history was not inspected.
- One workspace index and three `*_RECONSTRUCTED` files were matched by search but not read in full.

## 7. Escalation

**To:** Main Control Tower / Governance.

**Questions:**
1. Which copy is canonical?
2. If REPO: should the Drive copy be replaced and §67 / §22 reconciled?
3. If DRIVE: what is the status of the shipped K2 / PR-B / PR-F behaviour?

**Affected 06 items held until resolved:**
- P6 and P13 (decision pack).
- The ADJUST label Voice check (audit §2).
- KEEP / FADE presentation requirements (W3, on HOLD).

**CANONICAL COPY: UNRESOLVED**
