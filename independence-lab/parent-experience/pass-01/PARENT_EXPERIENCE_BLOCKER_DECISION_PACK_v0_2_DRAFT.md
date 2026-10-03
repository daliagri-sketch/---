# PARENT_EXPERIENCE_BLOCKER_DECISION_PACK_v0_2_DRAFT

**Supersedes:** v0_1_DRAFT (and its addendum).
**Status:** DRAFT. NOT SoT. 06 does not choose options.
**Purpose:** Main CT condition C before opening W3 / W4 / W6 is "the remaining blocker packet is updated". This is that update.

---

## 1. Gate conditions for opening W3 / W4 / W6 (Main CT, 02.10)

| Condition | Status |
|---|---|
| A. Contract reconciliation resolved | **IN REVIEW.** §4.3 / §4.4 / §24.5 governance-ratified 03.10.2026. `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT` returned to Main CT; not canonical until accepted |
| B. RT-02 parent routing decided where needed | **OPEN.** PB-01 / PB-02 Product decision pending |
| C. Remaining blocker packet updated | **This document** |

## 2. Blocker items

| ID | Blocks | Exact decision question | Current state | Owner | Depends on |
|---|---|---|---|---|---|
| **P6** | W3 | On KEEP, what uncertainty does the parent see, without reason codes or counts? | Partly answered **only** in repo-only contract §24.5. Not usable until canonicality is resolved. Runtime: KEEP shows "ממשיכים ככה" + the bank line (RT-10 on HOLD) | PRODUCT + VOICE | A; RT-10 |
| **P13** | W3 | FADE framing and the post-CTA path | §24.5 (repo-only) defines FADE presentation. Post-CTA = OD-P1-09; runtime RT-01 = error dead end. **BLOCKED FOR IMPLEMENTATION** | PRODUCT + PROFESSIONAL | A; OD-P1-09 |
| **P7** | W4 | May the parent trace why a result came out as it did, given the no-echo rule? | Unchanged. Contract does not address it | PRODUCT | — |
| **P8** | W6 | Should Check-in answers survive leaving mid-report? | Unchanged. Production has no persistence (REV3 §19). Runtime: client-side only | PRODUCT (+ privacy) | — |
| **P9** | W6 | Offline / on-device data | Runtime fact: G1 = NO submit works offline (client-side engine). No source decides policy | PRODUCT (+ privacy / legal) | — |
| **P10** | W6 | Lost-session / resume experience | Unchanged. Depends on P8 | PRODUCT | P8 |
| **P11** | W6 | COVERAGE_GAP / HOLDING / REPLANNING / TARGET_RECHECK experiences | Contract §24.4 (both copies): presentation null. Shipped titles and messages have no document source | PRODUCT + VOICE | A (partly) |
| **TG-02** | W6 | Check-in error states | Runtime: one generic `role="alert"`, no actions (also seen after FADE) | PRODUCT + CODE | — |
| **PB-01 / PB-02** *(new)* | W3, W6 | When no approved alternative plan exists after ADJUST, what parent-visible action remains? | Main CT: coverage-gap truth VALID; dead end = PRODUCT ROUTING GAP. LH and K2 | PRODUCT | Condition B |
| **RT-03** *(new)* | W3 (Runtime continuity) | Should "אם עדיין אין התחלה" open when the wait expires? | AMBIGUOUS. Decision note ready | PRODUCT | — |
| **CONTRACT** *(new)* | W3, W4 | Which `ENGINE_ADAPTER_CONTRACT_v0_10` copy is canonical, and is the reconciled successor approved? | UNRESOLVED. Reconciliation packet in preparation | MAIN CT / GOVERNANCE | Condition A |

## 3. Not blockers (tracked elsewhere)

| ID | Status | Location |
|---|---|---|
| RT-04 / RT-05 focus | Confirmed accessibility implementation issues | Prepared for later Code remediation |
| RT-08 G5 cue | Experience question only; REV3 unchanged | PX / Product |
| RT-09 grammar | Confirmed fidelity issue; wording proposal for Voice | `RT-09_NEUTRAL_HEBREW_WORDING_PROPOSAL_v0_1` |
| RT-10 "שנספרו" | HOLD until the bank source is found | Backlog §4 |
| RT-11 "היום" | Presentation fidelity issue; 06 handoff §2.5 amendment to prepare | Backlog §5 |

## 4. Recommended order

Main CT's call; 06 does not choose.

1. **Contract canonicality** (A). It unblocks the evaluation of P6 / P13 / P11.
2. **PB-01 / PB-02** (B). This is the only parent-facing dead end that is not already in an open register item.
3. **P6 + RT-10** together. Both concern the KEEP screen.
4. W6 items (P8 → P10, P9, TG-02, P11) as one Product session.
