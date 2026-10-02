# PARENT_EXPERIENCE_BLOCKER_DECISION_PACK_v0_1_DRAFT

**For:** Main Control Tower, before opening W3 / W4 / W6
**Status:** DRAFT. NOT SoT. **06 does not choose an option.**
**Items:** P6 · P13 · P7 · P8 · P9 · P10 · P11 · TG-02

---

## How to read this pack

**Source labels:**

| Label | Meaning |
|---|---|
| **CANON** | Active Professional / Product sources supplied to 06 |
| **REF** | HOME_v0_10_RECONSTRUCTED. It is derived from `ENGINE_ADAPTER_CONTRACT_v0_10`, which 06 has **not** received |
| **IMPL** | What commit `4499671` ships, from read-only source inspection. **Implementation is not canon.** It is listed so nobody decides against something already shipped without knowing |

**Cross-cutting precondition:** several items may already be answered in `ENGINE_ADAPTER_CONTRACT_v0_10`.
- The shipped code cites it for Progress / FADE ("v0.10 PR-F · approved Progress / Fade surface copy").
- **Before opening a decision, Main CT should confirm whether the contract already closes it.** Each item flags this.

**"Options already supported by sources"** lists only options that a supplied source states or directly permits. Where sources give none, the cell says so. 06 does not add options.

---

## P6 · KEEP: what uncertainty the parent sees

| Field | Content |
|---|---|
| **ID** | P6 |
| **BLOCKS** | W3 (Learning Results & Continuity); partly W4 |
| **EXACT DECISION QUESTION** | On a KEEP result (`insufficient_evidence` or `mixed`), what does the parent see about *what is not yet known*? Is it shown at all, and is it the same for both reasons? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | KEEP is the most frequent early outcome (Progress S01, S09, S13). Without a defined treatment, W3 cannot specify uncertainty visibility on the screen parents see most |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | (a) Show only the continuation ("same plan tomorrow"), no uncertainty statement: consistent with Progress §2 and the IMPL message. (b) Show a "not yet concluded" statement in the style of the locked non-evidence statement (Copy Lock Pack "עוד לא קובעים…"): consistent with Progress S13 bounds. **No source supports** showing the reason, the attempt count or a window |
| **WHAT MUST NOT BE INVENTED** | Reason codes; counts ("3 of 4", "a few more days"); "didn't count"; streaks; positive framing ("stabilising"); any change to KEEP logic |
| **RECOMMENDED OWNER** | PRODUCT (decision) + VOICE (string). Professional only if (b) needs a meaning statement. **Precondition:** check `ENGINE_ADAPTER_CONTRACT_v0_10` ProgressProjection for KEEP |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| CANON Progress §2, §4 | KEEP = same target, same support, same intervention. Reasons: `insufficient_evidence` / `mixed` |
| CANON Progress §4 | "The parent does not need to know the word" (`burst_window` rejected) |
| CANON Progress S13 | Must not present non-evidence mornings as "didn't count" |
| CANON Progress §1 | No score, percentage or streak |
| IMPL | The ProgressView surface shows two points, "בהתחלה" and "עכשיו". "עכשיו" is empty before FADE. A KEEP or ADJUST reflection may appear. Canonical message: "ממשיכים כרגע עם אותה תכנית ואותה רמת עזרה." |

---

## P13 · FADE screen framing

| Field | Content |
|---|---|
| **ID** | P13 |
| **BLOCKS** | W3 |
| **EXACT DECISION QUESTION** | How does the FADE screen present a closed target and a *proposed, not opened* next step, without praise framing and without implying help is being withdrawn? And what happens after the FADE CTA (OD-P1-09)? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | FADE is the only "success" moment. Parents may read reduced support as help withdrawn (Gemini L3, kept as RQ-12). The path after the CTA is a known gap |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | Sources fix the boundaries (closes, proposes, Planning approves, no praise, no score), not the framing. The IMPL surface exists. **Option sources support:** confirm the IMPL surface as is, or have Product / Voice review it. The post-CTA path has **no supported option** until OD-P1-09 is decided |
| **WHAT MUST NOT BE INVENTED** | Celebration or milestone language; a next target shown as already open; "independence achieved"; any statement of parent performance; the RECHECK flow itself |
| **RECOMMENDED OWNER** | PRODUCT + PROFESSIONAL (OD-P1-09); VOICE for strings. **Precondition:** confirm against `ENGINE_ADAPTER_CONTRACT_v0_10` PR-F, which IMPL cites as approved |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| CANON Progress §2, §6 | FADE closes the target. Planning re-check (four questions). The next target is *proposed*, not opened |
| CANON Target §4 | Closure does not auto-open a target |
| CANON Framework §7 (Heritage 12, REF-level) | Recognition is not artificial praise |
| GOV OD-P1-09 | FADE → RECHECK_AFTER_FADE public-path coverage gap, open |
| IMPL | Two-point path "בהתחלה" → "עכשיו", with `childNowLine` and `parentStoppedLine`. FADE title and body come from the projection. CTA "בּודקים מה הלאה" → RECHECK_AFTER_FADE. Code comment: "approved copy, exact" |

---

## P7 · Parent-facing traceability vs the no-echo rule

| Field | Content |
|---|---|
| **ID** | P7 |
| **BLOCKS** | W4 (Voice / Trust / Uncertainty) |
| **EXACT DECISION QUESTION** | May the parent see *why* a result came out as it did (which of their answers led to it)? If yes, on which screens and at what level, given that the non-evidence result must not echo reported context? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | Handoff §7 requires traceability. The no-echo rule forbids its most obvious form. W4 cannot write trust requirements until it knows whether trace-back is allowed. W2 CR-07 ("something was different" after G2 = כן) is the concrete case |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | (a) No parent-facing trace on result screens: the current locked state. (b) Traceability kept at the Contract level only: the current CANON. **No source supports** a parent-facing trace on the non-evidence result. For KEEP / ADJUST / FADE, sources are silent |
| **WHAT MUST NOT BE INVENTED** | Echo of G2a facts or G5 rows as a verdict; "because you…" explanations; motive; any exposure of `invalidReason` or Rule 5 |
| **RECOMMENDED OWNER** | PRODUCT; MAIN CT if it requires revisiting REV3 §16 |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| CANON REV3 §16, Log §14 | The non-evidence result shows no context echo and no parent reflection |
| CANON 06 handoff §7, §14 | Traceability must be preserved |
| CANON REV3 §12a | `sourceObservationRefs` / `ruleFiveWindowRefs` give Contract-level traceability, not parent-facing |
| CANON Observation §3ג | No motive inference |

---

## P8 · Auto-save, deferred return, persistence

| Field | Content |
|---|---|
| **ID** | P8 |
| **BLOCKS** | W6 |
| **EXACT DECISION QUESTION** | If a parent leaves mid-Check-in (back gesture, reload, closed tab, in-app browser), should their answers survive? If yes, where, and for how long? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | A lost report means no Observation and no measured attempt (REV3 §18). W6 cannot define recovery without knowing whether anything is recoverable |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | (a) The current state: no persistence; the report is re-entered. No source describes any persistence option for Production |
| **WHAT MUST NOT BE INVENTED** | Local storage of child or parent data; "draft saved" cues; deadlines for the report |
| **RECOMMENDED OWNER** | PRODUCT (+ privacy review) → TECHNICAL |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| CANON REV3 §19 | Production has no persistence |
| CANON Check-in handoff §2 | Hidden-group answers are kept in local session state only |
| IMPL | Production never touches sessionStorage. Preview-only persistence exists behind a closed gate. A reload of Production loses the session |

---

## P9 · Offline and local caching

| Field | Content |
|---|---|
| **ID** | P9 |
| **BLOCKS** | W6 |
| **EXACT DECISION QUESTION** | Should the product work, or hold data, when the connection drops? Is storing family data on the device acceptable? |
| **CURRENT CANONICAL TRUTH** | No source addresses offline. IMPL: the engine is a client-side fixture engine on the public path, so the flow may continue without network once loaded. This is not verified at runtime and is not a decision |
| **WHY PX NEEDS A DECISION** | The device is often a shared family phone. The parent experience of a failure depends on this |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | None |
| **WHAT MUST NOT BE INVENTED** | Caching, sync or "offline mode" behaviour; any privacy claim |
| **RECOMMENDED OWNER** | PRODUCT (+ privacy / legal) |

---

## P10 · Lost session and resume

| Field | Content |
|---|---|
| **ID** | P10 |
| **BLOCKS** | W6 |
| **EXACT DECISION QUESTION** | When a parent returns after losing the session, what do they see, and what is restored (Target, PlanningInstance, plan)? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | Recovery without blame is a core PX requirement. Without a defined resume, the parent may restart intake and lose the plan |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | Resume through `RESUME_CONTINUITY` → Home H1–H4 (REF), *if* persistence exists (P8). With P8 = no persistence, sources support no resume in Production |
| **WHAT MUST NOT BE INVENTED** | Restored state that the Contract does not hold; messages implying data loss is the parent's fault |
| **RECOMMENDED OWNER** | PRODUCT. **Dependent on P8** |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| REF HOME §7 | `RESUME` rebuilds reflection from canonical sources. A continuity path exists in the contract |
| IMPL | A `RESUME_CONTINUITY` action exists, labelled "המשך". The canonical message is "אפשר להמשיך מאותה נקודה שבה עצרנו." Without persistence, Production cannot resume after a reload |

---

## P11 · COVERAGE_GAP, HOLDING, REPLANNING, TARGET_RECHECK experiences

| Field | Content |
|---|---|
| **ID** | P11 |
| **BLOCKS** | W6; touches W1 (W1-F4) |
| **EXACT DECISION QUESTION** | Is the shipped treatment of these four states the approved parent experience, or a placeholder? If it is a placeholder, who defines them? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | The parent reaches these states (for example K2 ADJUST → COVERAGE_GAP, REV3 open item 2). 06 cannot tell whether the shipped text is approved |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | (a) Confirm IMPL as approved, if `ENGINE_ADAPTER_CONTRACT_v0_10` or a Voice lock covers it. (b) Treat IMPL as interim and define the states. Sources do not state which applies |
| **WHAT MUST NOT BE INVENTED** | Generic advice in a coverage gap (IMPL itself says "לא נציע כאן משהו כללי רק כדי לתת תשובה"); new Planning logic; Safety behaviour (SAFETY_REPLACEMENT stays BLOCKED) |
| **RECOMMENDED OWNER** | PRODUCT + VOICE. **Precondition:** check `ENGINE_ADAPTER_CONTRACT_v0_10` |

**Current canonical truth, in detail:**

REF HOME §2: `continuity_result` presentation is null for these states; the other screens are not described.

IMPL shows each state as a screen title, a canonical message and the allowed actions:

| State | Screen title | Canonical message |
|---|---|---|
| COVERAGE_GAP | "אין עדיין תכנית מתאימה" | "המצב שתיארת עדיין לא נמצא במסלול… לא נציע כאן משהו כללי רק כדי לתת תשובה." Or, for ADJUST: "התכנית הנוכחית לא ממשיכה כרגיל. היעד נשמר. כרגע אין תכנית חלופית מאושרת." |
| HOLDING | "נשארים כרגע עם העזרה הקיימת" | — |
| REPLANNING | "מעדכנים את התכנית" | — |
| TARGET_RECHECK | "בודקים את הצעד הבא" | — |

---

## TG-02 · Check-in error states

| Field | Content |
|---|---|
| **ID** | TG-02 |
| **BLOCKS** | W6 |
| **EXACT DECISION QUESTION** | When saving the Check-in fails (technical error or rejected combination), what does the parent see, and are their answers kept for a retry? |
| **CURRENT CANONICAL TRUTH** | See below |
| **WHY PX NEEDS A DECISION** | A failed save after a long deviation-day report (about 2.5 screens) is the highest-friction failure in the flow. Whether answers survive is unknown |
| **OPTIONS ALREADY SUPPORTED BY SOURCES** | (a) The current generic technical surface. No source defines retry, answer retention or field-level errors |
| **WHAT MUST NOT BE INVENTED** | Error copy; retry or auto-save behaviour; any message implying the parent made a mistake; exposure of Contract rejection reasons |
| **RECOMMENDED OWNER** | PRODUCT + CODE (+ VOICE for strings) |

**Current canonical truth, in detail:**

| Source | Truth |
|---|---|
| CANON | No source specifies Check-in error states. REV3 §13 defines Contract rejections (impossible combinations); the UI prevents them (§3a, §4a, §7) |
| IMPL (audit TA-13) | One generic surface, `role="alert"`: "לא הצלחנו להשלים את הפעולה כרגע." Whether answers survive: unknown without runtime |

---

## Summary for Main CT

| ID | Blocks | Owner | Precondition |
|---|---|---|---|
| P6 | W3 | PRODUCT + VOICE | Check contract v0.10 |
| P13 | W3 | PRODUCT + PROFESSIONAL + VOICE | Check contract v0.10 PR-F; OD-P1-09 |
| P7 | W4 | PRODUCT (MAIN CT if REV3 §16 is touched) | — |
| P8 | W6 | PRODUCT (+ privacy) | — |
| P9 | W6 | PRODUCT (+ privacy / legal) | — |
| P10 | W6 | PRODUCT | Depends on P8 |
| P11 | W6 | PRODUCT + VOICE | Check contract v0.10 |
| TG-02 | W6 | PRODUCT + CODE | — |

**Missing input that may close several items at once:** `ENGINE_ADAPTER_CONTRACT_v0_10.md` (canonical unified contract). 06 has seen only the HOME reconstruction derived from it.

---

## Addendum (02.10.2026) · Blocker source reconciliation after reading ENGINE_ADAPTER_CONTRACT_v0_10

Full trace is in `PARENT_EXPERIENCE_TECHNICAL_AUDIT_4499671_v0_1_DRAFT` §3.

| Item | Status | Remaining open question |
|---|---|---|
| P6 | **PARTIALLY CLOSED.** Closed only by the repo copy of the contract, §24.5 | Whether uncertainty is shown on KEEP. The source of the KEEP reflection lines (Parent-Learning Bank LH-B2 v0.3, not found) |
| P13 | **PARTIALLY CLOSED.** Closed only by the repo copy of the contract, §24.5 | The post-CTA path (OD-P1-09; runtime RT-01 is an error dead end). LH FADE lines. The point labels and CTA string have no document source |
| P11 | **OPEN** | Contract §24.4 (both copies) sets presentation = null. The shipped titles and messages have no document source |

**Precondition for all three:** the Drive canonical contract v0.10 lacks §24.5. Main CT must decide which copy is canonical for PR-F. The other items (P7, P8, P9, P10, TG-02) are unchanged by the contract.
