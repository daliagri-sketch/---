# PRODUCTION VISUAL REFERENCE — COMMIT 4499671

**Label:** PRODUCTION VISUAL REFERENCE — COMMIT 4499671. Not a Staging baseline, not a design source, not SoT.

## What was captured

| Item | Value |
|---|---|
| Deployment | `dpl_EZLAGVfKofXVWgqk7jYFwM1jPvz2` |
| Commit | `449967109bfb352ba45c2f3feb0c3d746c575fbd` |
| URL | `maabadat-haatzmaut.vercel.app` (public alias of the accepted deployment; the Staging alias is behind Vercel SSO and serves the same deployment) |
| Commit check | Re-confirmed read-only before capture (Vercel API), 02.10.2026 |
| Browser | Headless Chromium (Playwright 1.56.1), mobile emulation, DPR 2, locale he-IL |
| TLS | Verification on. The session proxy CA was added to the browser NSS store under Main CT authorisation |
| Interaction | Ordinary parent use only. Client-side engine; no server writes; nothing in Production changed |
| Folders | `390/` (390 × 844) and `320/` (320 × 640) |

## File naming

Files are named `<session><nn>-<state>.png`. The session letter says which path produced the capture:

| Session | Path |
|---|---|
| A | Main path: four valid days → KEEP → FADE → recheck |
| B | Not-as-planned day: G5 reset clearing, recall clarification, non-evidence result |
| C | G1 = NO (submitted offline) |
| D | Four off-target days → ADJUST → replanning |
| W | Runtime after the 60 s wait (390 only) |

## Coverage

**Captured** (both widths unless noted):

| Area | Surfaces |
|---|---|
| Entry and intake | Welcome · Trust · Child setup (empty, filled) · Morning moment · Morning situation · Open Description |
| Planning | Initial Picture · First Plan (closed, disclosures open) · Child Preparation · Pre-Day (closed, open) |
| Runtime | Runtime (closed, open) · Runtime after wait (390 only) |
| Check-in | Empty · G1 = כן · G1 = לא · G2 = לא with G2a · valid day filled · G5 reset selected → cleared by a C2 fact · recall clarification · insufficient recall · non-evidence filled |
| Results | Valid day result (day 1, day 4) · non-evidence result · plan after the same-plan CTA · G1 = NO result |
| Progress | KEEP ("ממשיכים ככה") · FADE result (LH: TARGET_RECHECK copy) · after FADE CTA (generic technical-error surface) · ADJUST ("משנים את התכנית") · after ADJUST action (COVERAGE_GAP, no actions) |

**NOT CAPTURED:**

| Surface | Reason |
|---|---|
| Home H1–H4 | Not reached in any tested path |
| CAPABILITY_PROBE / ENVIRONMENT_FIRST Initial Picture variants | Not reached with the intake text used |
| HOLDING | Not reached |
| SAFETY_REPLACEMENT | Out of scope (BLOCKED) |
| K2 / dressing and bag_items templates | Only the LH-B2-02 path was run |

The 200% zoom emulation captures (195 CSS px) are evidence only. They are kept outside this reference set (the result JSON is in `pass-01/audit-evidence/`).
