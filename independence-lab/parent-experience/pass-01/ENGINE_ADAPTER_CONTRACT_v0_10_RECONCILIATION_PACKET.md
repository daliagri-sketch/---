# ENGINE_ADAPTER_CONTRACT_v0_10_RECONCILIATION_PACKET

**Status:** DRAFT for Main Control Tower. Read-only. NOT SoT.
- No Drive or repo document was changed.
- Read-only actions taken:
  - two bounded `git fetch --depth=400` runs into the local clone (history only; working tree untouched; nothing pushed);
  - GitHub PR reads.

**CANONICAL COPY: UNRESOLVED.**

**Reconciled successor copy: NOT PREPARED.** The Main CT condition was "if all three sections receive clean provenance". **They do not** (§5).

---

## 0. How the repo copy diverged (git history)

- The repo contract file is unchanged between `5f874b6` → `32c49d6` → `4499671`.
- Every repo-only addition was made in Code Claude commits inside PRs #13, #16 and #20 of daliagri-sketch/maabadat-haatzmaut. All three were merged by Dalia's account into the `v0.10` branch, and all are ancestors of both released commits (`32c49d6`, `4499671`).

| Commit | Date (UTC) | Contract change | PR |
|---|---|---|---|
| `aa41f14` | 27.09 11:31 | Header line; §4.2 K2 row; new §4.3 (12 items) | #13 |
| `84e0869` | 27.09 12:30 | §4.3 → 13 items; §5 adds `REPORT_RUNTIME_NO_START` | #13 |
| `c2a4284` | 27.09 13:23 | §4.3 item 7 (application wait gate) | #13 |
| `f146a44` | 27.09 18:46 | Header line + new §4.4 | #16 |
| `ba007ea` | 28.09 00:06 | New §24.5 | #20 |
| `5f874b6` | 28.09 00:17 | §24.5: ADJUST label "צריך להתאים את התכנית"; `reflection`; FADE exclusivity | #20 |

The Drive copy was uploaded on 26.09 22:34Z and never updated.

---

## 1. §4.3 · K2 ACTIVATION DELTA

| Field | Content |
|---|---|
| **SECTION** | §4.3 (13 items) + header line + §4.2 K2 row + §5 union line |
| **ORIGINATING APPROVED DECISION / SOURCE** | **Activation:** INTERVENTION_BANK_dressing_bag_items_v0_6 (Drive `1QDa4LBx…`): "v0.6 (K2 activation, הכרעת Product Lead 26.9.2026): DR-B1-01 הופעלה" · §0.0 "K2 · DR-B1-01 · ACTIVE · implementation-enabled · LOCKED (Product Lead / דליה, 26.9.2026)". KNOWLEDGE_GAP_REGISTRY_v0_5 (Drive `14f-ty1_…`): "v0.5: APPROVED על ידי Product Lead (26.9.2026)". **Contract mechanics** (runtimeCursor, `REPORT_RUNTIME_NO_START`, explicit terminal action, `allowedCompletionKinds`, `ifNotStart` rule, identity resolver, `safetyStopText`): **NOT FOUND** as a Drive decision. Only PR #13 text ("approved K2 contract deltas") and a code comment ("Voice-approved, Product Lead 27.9.2026") |
| **DATE** | Activation 26.9.2026 · contract text 27.9.2026 |
| **AUTHORITY** | Activation: Product Lead / Dalia (documented). Mechanics + Voice label "עדיין אין התחלה": **undocumented**; implicit only (Dalia merged PR #13) |
| **IMPLEMENTED IN** | PR #13 "K2: activate DR-B1-01" (merged 27.09 13:31Z) + PR #14 (fixture). Release: RELEASE_RECORD_2026-09-29 (`?fixture=K2` ON in Staging); PROJECT_WORK_STATUS_2026-09-29; in `32c49d6` and `4499671` |
| **SUPPORTED BY LATER CANONICAL SOURCES** | **PARTIAL.** K2 active: **YES** (Bank v0.7 APPROVED 30.9 "K2 / DR-B1-01: ACTIVE … ללא שינוי ב-v0.7"; ACTIVE_SOT_INDEX_v0_4; KGR v0.6; REV3 §4 / §4a; Decisions Log §5, §18; Master Handoff). Escalation / STOP / completion / Safety semantics: restated by Bank v0.7 §0.2, §2, consistent. Mechanics: **not mentioned and not contradicted** by any later source |
| **Stale provenance** | §4.2 row and §4.3 item 13 cite Bank v0.6 / KGR v0.5 / `bankVersion = 0.6`. Active versions are Bank v0.7 / KGR v0.6 (Bank v0.7: no change to K2 status or locked copy) |
| **SAFE TO INCORPORATE** | **YES for the activation and its Professional semantics.** **CONDITIONAL for the contract mechanics:** released and uncontradicted, but they need an explicit ratification record because no Drive approval exists. Provenance citations must be updated to v0.7 / v0.6, or kept as historical |

## 2. §4.4 · PR-B · MORNING MOMENT SELECTION

| Field | Content |
|---|---|
| **SECTION** | §4.4 + header line |
| **ORIGINATING APPROVED DECISION / SOURCE** | **NOT FOUND.** No PR-B packet, decision or Voice lock on Drive (searched `declaredTask`, `morning_task_mismatch`, "על מה תרצו לעבוד הבוקר", "Morning moment"). Only PR #16 text ("final Voice copy") and a code comment ("Approved Voice copy … (PR-B)"). Indirect support: the dressing-only-DR-B1-01 rule follows from Bank v0.6 / v0.7 §0.0 (only K2 ACTIVE; DRAFT templates are not retrieved) |
| **DATE** | 27.9.2026 |
| **AUTHORITY** | **Undocumented.** Implicit only (Dalia merged PR #16) |
| **IMPLEMENTED IN** | PR #16 "PR-B: Morning moment selection + context anchor + brand shell" (merged 27.09 22:11Z, `f146a44`). In `32c49d6` and `4499671`. **Runtime-verified by 06** (moment-selection screen, `390/A05`) |
| **SUPPORTED BY LATER CANONICAL SOURCES** | **NOT ADDRESSED.** REV3, Decisions Log, Open Decisions Register, Fact Set and Master Handoff neither mention nor contradict it. Decisions Log §17 lists "exact final Contract enum / field names" as NOT closed |
| **SAFE TO INCORPORATE** | **NO without explicit ratification.** Released and uncontradicted, but no approved decision with stated authority exists |

## 3. §24.5 · PR-F · TARGET SUPPORT ACTIONS + PROGRESSPROJECTION

| Field | Content |
|---|---|
| **SECTION** | §24.5 (43 lines) |
| **ORIGINATING APPROVED DECISION / SOURCE** | **NOT FOUND.** No PR-F packet, Voice lock or READY set on Drive for "ממשיכים ככה", "מפחיתים עזרה", "צריך להתאים את התכנית" / "משנים את התכנית", "הצעד הזה התייצב", "עכשיו בודקים איזו עזרה מתאימה הלאה.", "בהתחלה" / "עכשיו", "בּודקים מה הלאה", or the support-action texts. Bank v0.7 has no FADE / support-action copy. Progress v0.3.3 excludes UI ("לא מסמך זה: UI") |
| **DATE** | 28.9.2026 |
| **AUTHORITY** | **Undocumented.** Implicit only (Dalia merged PR #20) |
| **IMPLEMENTED IN** | PR #20 "PR-F: Progress / Fade" (merged 28.09 08:40Z; `ba007ea`, `5f874b6`). RELEASE_RECORD_2026-09-29 (ADJUST / FADE fixtures ON in Staging). In `32c49d6` and `4499671`. **Runtime-verified by 06:** KEEP ("ממשיכים ככה" + two-point path); ADJUST ("משנים את התכנית"); LH FADE shows TARGET_RECHECK copy, no ProgressProjection |
| **SUPPORTED BY LATER CANONICAL SOURCES** | **PARTIAL, with one contradiction.** *Consistent:* Progress v0.3.3 (no score / % / streak); Decisions Log §2 / §14 and REV3 §16 (no K/A/F card on non-evidence days). **Contradiction, ADJUST label:** §24.5 = "צריך להתאים את התכנית" (`5f874b6`). The released code = "משנים את התכנית", from commit `6273b1c` "ADJUST decision label restored to the Product source", part of unmerged PR #24 but an ancestor of `4499671`. PROJECT_WORK_STATUS_2026-09-29: "Voice / Copy: ADJUST locked". **No Drive Voice lock found for either string. Open:** OD-P1-09 (FADE → RECHECK public path) affects §24.5's FADE path |
| **SAFE TO INCORPORATE** | **NO as written.** No approval record. The ADJUST label contradicts released behaviour. OD-P1-09 is open |

---

## 4. Structural maintenance gaps in the repo copy

### 4.1 §22 mismatch
- §22 still says "v0.10: נוספו ParentReflectionProjection (§24.3) ו-HomeProjection (§24.4)". Its union has five members, **without `ProgressProjection`**.
- §24.5 states "`progress_result.presentation` הוא `ProgressProjection | null`".
- The released code includes it: `schemas.ts:539`, `PresentationPayloadSchema = … HomeProjectionSchema, ProgressProjectionObjectSchema`.
- **Classification:** adding it to §22 is a **document sync** with §24.5 and the code, not a new technical decision. It is **not** "restoring approved truth", because §24.5 has no approval record. **It inherits whatever ratification §24.5 receives.**

### 4.2 Body types not synced (same pattern)

| Missing from the body | Delta it belongs to |
|---|---|
| `TargetProposal` / `ActiveTarget` have no `startingSupportAction` / `targetSupportAction` | §24.5 |
| §40 canonical results have no `morning_task_mismatch_clarification_required` | §4.4 |
| `SUBMIT_SCENE` payload body has no `declaredTask` | §4.4 |
| §40 `ProgressResult` has no `presentation` change | §24.5 |

### 4.3 §67 missing change-history entries

The table ends at row 12 in both copies. Needed:

| # | Change | Sections | Date | Source / evidence |
|---|---|---|---|---|
| 13 | K2 activation (DR-B1-01 ACTIVE; chain / terminal; `safetyStopText`; `runtimeCursor` + `REPORT_RUNTIME_NO_START`; `allowedCompletionKinds`; `ifNotStart` rule; identity boundary; provenance) | header, §4.2, §4.3, §5 | 27.9.2026 | Bank v0.6 §0.0 + KGR v0.5 (Product Lead 26.9); PR #13 |
| 14 | Morning moment selection (`declaredTask`, mismatch clarification, dressing = DR-B1-01 only) | header, §4.4 (+ §40, SUBMIT_SCENE if synced) | 27.9.2026 | PR #16; **no Drive decision** |
| 15 | Target support actions + ProgressProjection (+ reflection, FADE exclusivity, labels) | §24.5 (+ §22, §40, TargetProposal / ActiveTarget if synced) | 28.9.2026 | PR #20; **no Drive decision**; ADJUST-label conflict |

---

## 5. Drive index references requiring update if reconciliation passes

All point to the DRIVE copy `1YUivC5JjQNolvufnreSlijTcJD_jgPGa`.

| # | Index | Drive ID | Current reference |
|---|---|---|---|
| 1 | PROJECT_FILE_INDEX_v1_0 | `1WyncnMCvUrv9Li2G7EPyZDhtjOTF5GKY` | "\| ENGINE_ADAPTER_CONTRACT \| v0.10 \| Public technical contract \| ACTIVE \| YES \| … \| `1YUivC5JjQNolvufnreSlijTcJD_jgPGa` \| … \| Canonical location; Drive ID preserved \|" |
| 2 | CODE_CLAUDE_IMPLEMENTATION_WORKSPACE_INDEX | `12yUOZkjEpnAAzppK-Yhxh22IC_jf-KRT` | "\| ENGINE_ADAPTER_CONTRACT_v0_10 \| Active public technical contract \| https://drive.google.com/file/d/1YUivC5JjQNolvufnreSlijTcJD_jgPGa/view \|" |
| 3 | HOURI_CODE_CLAUDE_WORKSPACE_INDEX | `1AOBHV1-ZJL5eg_r4WllNbA-GeB1_6taa` | Identical row to #2 |
| 4 | PROJECT_FILE_INVENTORY_FOR_DRIVE_v0_1 | `1JFvNt-5eBt6f_FdANL3oFE3U_nM_xnJ3` (read-only baseline) | "ENGINE_ADAPTER_CONTRACT \| v0.10 ACTIVE \| 01_PRODUCT/contract" (no link) |

**Name-only (no link):** Bank v0.7 header "כפוף ל: … ENGINE_ADAPTER_CONTRACT v0.10"; TMP_PROJECT_INDEX_PACKET_NONCANONICAL.

**If a successor file is created, its Drive ID policy must be decided.** PROJECT_FILE_INDEX states "Drive ID preserved" for the canonical location. That means either replace the content under the same ID, or issue a new version and update rows 1–3.

---

## 6. Result

| Section | Provenance | Later support | Safe to incorporate |
|---|---|---|---|
| §4.3 K2 | Activation documented; mechanics undocumented | PARTIAL (activation fully supported) | **YES** (activation) / **CONDITIONAL** (mechanics: ratification needed) |
| §4.4 PR-B | **None found** | Not addressed | **NO** without ratification |
| §24.5 PR-F | **None found** | PARTIAL + ADJUST-label contradiction + OD-P1-09 | **NO** as written |

**Successor copy: NOT PREPARED.** The clean-provenance condition is not met.

### What would unblock it (Main CT / Governance; 06 does not decide)

1. **Ratification record** for the §4.3 contract mechanics, §4.4 PR-B and §24.5 PR-F. Each is released behaviour, merged by Dalia's account, with no written decision on Drive.
2. **ADJUST label decision:** "צריך להתאים את התכנית" (§24.5) or "משנים את התכנית" (released, reportedly "locked" on 29.09). Then a Voice lock record.
3. **Provenance citations:** update to Bank v0.7 / KGR v0.6, or mark them historical.
4. **Drive ID policy** for the successor (§5).
5. Then 06 can prepare the reconciled copy: **Drive text + the three ratified sections + §22 / §40 / TargetProposal / SUBMIT_SCENE body sync + §67 rows 13–15 + K2 row**, with no other semantic change. It goes back to Main CT before publishing.

**CANONICAL COPY: UNRESOLVED**
