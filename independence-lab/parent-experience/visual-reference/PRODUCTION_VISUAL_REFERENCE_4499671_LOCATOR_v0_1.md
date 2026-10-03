# PRODUCTION_VISUAL_REFERENCE_4499671_LOCATOR_v0_1

**PRODUCTION VISUAL REFERENCE — NOT COMPLETE BASELINE**

**Status:** DRAFT / NOT SoT. This is a locator only. It contains no image files.
**Owner:** Parent Experience Control Tower (06). The set was accepted by Main CT as PARTIAL on 02.10.2026.

---

## 1. Identity

| Item | Value |
|---|---|
| Commit | `4499671` (`449967109bfb352ba45c2f3feb0c3d746c575fbd`) |
| Deployment | `dpl_EZLAGVfKofXVWgqk7jYFwM1jPvz2` (public alias `maabadat-haatzmaut.vercel.app`) |
| Capture date | 02.10.2026 |
| Capture status | **PARTIAL** |
| Repository | `daliagri-sketch/---` |
| Branch | `claude/loving-planck-18hes4` |
| Path | `independence-lab/parent-experience/visual-reference/4499671/` |
| README in the set | `visual-reference/4499671/README.md` |

## 2. Viewport coverage

| Folder | Viewport | Files |
|---|---|---|
| `390/` | 390 × 844, DPR 2 | 36 PNG |
| `320/` | 320 × 640, DPR 2 | 35 PNG (`W01` is captured at 390 only) |
| **Total** | | **71 PNG** |

**Capture setup:**
- Headless Chromium (Playwright 1.56.1), locale he-IL, with TLS verification on.
- The parent used the app normally, with no writes to Production.

## 3. Surface families captured

Each session in the set ran one parent path:

| Session | Path |
|---|---|
| A | Main path: four valid days → KEEP → FADE → recheck |
| B | Not-as-planned day |
| C | G1 = NO |
| D | Four off-target days → ADJUST |
| W | Runtime after the 60 s wait |

Surfaces captured, by family:

| Family | Surfaces |
|---|---|
| Entry and intake | Welcome · Trust · Child setup (empty, filled) · Morning moment · Morning situation · Open Description |
| Planning | Initial Picture · First Plan (closed, disclosures open) · Child Preparation · Pre-Day (closed, open) |
| Runtime | Runtime (closed, open) · Runtime after wait (390 only) |
| Check-in | Empty · G1 = כן · G1 = לא · G2 = לא with G2a · valid day filled · G5 reset selected, then cleared by a C2 fact · recall clarification · insufficient recall · non-evidence filled |
| Results | Valid day result (day 1, day 4) · non-evidence result · plan after the same-plan CTA · G1 = NO result |
| Progress | KEEP · FADE result · after the FADE CTA (generic technical-error surface) · ADJUST · after the ADJUST action (COVERAGE_GAP, no actions) |

**The set covers one template only:** LH-B2-02 (leaving_home, age 5).

## 4. Surfaces missing

| Surface | Reason |
|---|---|
| Home H1–H4 | Not reached on any tested path |
| Initial Picture variants: CAPABILITY_PROBE / ENVIRONMENT_FIRST | Not reached with the intake text used |
| HOLDING | Not reached |
| REPLANNING with an approved alternative plan · TARGET_RECHECK as a working flow | No source path exists (RT-01, RT-02) |
| SAFETY_REPLACEMENT | Out of scope (Safety BLOCKED) |
| K2 / dressing (DR-B1-01) · bag_items | Only the LH-B2-02 path was run |
| LH-B2-01 · ages 4, 6, 7 | Not run |
| Morning task mismatch clarification | Not run |
| Error, offline and lost-session states (beyond the generic technical error) | Not run |
| Desktop and other viewports · 200% zoom | 200% zoom captures are evidence only and are not in this set |

## 5. Use rules

- This set is a reference for released behaviour at `4499671`. It is **not** a design source, **not** a Staging baseline and **not** SoT.
- **Do not use it as a regression baseline.** Coverage is incomplete.
- The images live only at the repository path above. This locator does not duplicate them.
