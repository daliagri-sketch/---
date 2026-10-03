# FADE_ADJUST_PARENT_ROUTING_REQUIREMENTS_v0_1_DRAFT

**Owner:** Parent Experience Control Tower (06) · 03.10.2026
**Status:** DRAFT. Experience requirements only.

**This document is not:**
- Product truth or Professional truth;
- final Voice copy (there are no exact strings);
- a Code task.

**Scope:** the two confirmed zero-action dead ends on accepted commit `4499671`:
- RT-01 / OD-P1-09 (FADE);
- RT-02 / PB-01 / PB-02 (ADJUST with no approved alternative).

**Sources:**

| Kind | Source |
|---|---|
| Runtime evidence | `PARENT_EXPERIENCE_TECHNICAL_AUDIT_4499671_v0_1_DRAFT` (RT-01, RT-02, RT-10); `visual-reference/4499671/390/A38`, `A39`, `D16`, `D17`; `results-A-390.json` |
| Traces | `RT-02_ADJUST_PATH_SOURCE_TRACE_v0_1_DRAFT` |
| Contract | `ENGINE_ADAPTER_CONTRACT_v0_11_RECONCILED_DRAFT_REV3` (Drive `1HE8dzfy…`, SHA-256 `7c19ff92…`): §24.5, §37, §61, R12 |
| Professional | PROGRESS_KEEP_ADJUST_FADE_v0_3_3 §2, §5, §9 · KNOWLEDGE_GAP_REGISTRY_v0_6 (KG-007, §3, §5) · Packet REV3 §23 |

**Verification classes:**
- RUNTIME-VERIFIED = observed live on `4499671`.
- SOURCE-INSPECTED = established from code or documents only.

---

## 0. Facts common to both routes

1. **No persistence in Production.**
   - Each route can only be left by reloading.
   - A reload starts a new session, and the parent's whole history is lost (REV3 §19; contract §68 applies to Preview only).
   - Any requirement of the form "come back later" or "we'll let you know" depends on open items P8 / P10.
2. **Both dead ends are known and predictable.** Neither is a malfunction.
3. **The parent reached both after doing everything asked:**
   - four mornings, each reported in full;
   - for FADE, a real success.

---

# A. FADE — after the step has stabilized

## A.1 PUBLIC PARENT PATH (authoritative · RUNTIME-VERIFIED · LH-B2-02, age 5)

### CURRENT STATE

**Before the dead end** (`A38`):
- Application state `TARGET_RECHECK`.
- Screen title "בודקים את הצעד הבא".
- Body, as released: most mornings, including the last one, the child reached the door when the sand ran out; the step is stable; the target is closed; before the next step, what fits now is checked again.
- One CTA: RECHECK_AFTER_FADE.
- In canonical state:
  - the Target is **closed** (`activeTargetRef = null`);
  - the PlanningInstance is `closed_with_target`;
  - there is no ProgressProjection, because LH has no approved FADE lines (KNOWN_LIMITATIONS §3).

**The dead end** (`A39`):
- The CTA returns `technical_error`. The public scenario set has no recheck scenario.
- The same title stays, with one `role="alert"` line meaning "we couldn't complete the action right now".
- **Zero actions.**

### PARENT KNOWS

- The child now does the step on their own in most mornings, including the last one.
- The step is considered stable, and the current target is finished.
- Something comes next, and it needs a check first.
- After the CTA: something failed. The parent is not told what failed, whether to retry, or what to do tomorrow morning.

### PARENT DOES NOT KNOW

**Professionally unknown:**
- The next target after LH-B2-02.
- Whether a check morning is needed first:
  - KGR v0.6 delta line: "LH-B2-02 at age 5 after FADE requires a check morning";
  - KG-016 is OPEN for ages 6–7;
  - 06 has not traced the content of the check morning.

**Product-unknown (OD-P1-09):**
- What the recheck screen leads to.
- Whether the stabilized step may continue meanwhile.

**Parent-facing unknowns:**
- Whether to keep doing what worked.
- Whether to stop the sand timer.
- Whether the closed target "counts".
- Whether to return to the app tomorrow, and to what.

### TRUTH BOUNDARY

**Valid truth:**
- FADE happened. The target is closed.
- Progress v0.3.3 §2: after FADE comes a Planning re-check, then a *proposed* next target.

**Not truth:**
- The technical error. It is an artefact of a missing route, not a malfunction of the parent's data.
- Any next target, next help level, or "maintenance" instruction. No source defines them for this path.

### EXPERIENCE REQUIREMENT

1. **A known gap is never presented as a technical error.**
   - "Something failed" implies a malfunction and invites retry.
   - The parent needs a stable statement of where things stand.
2. **Continuity:** the achievement stays visible after the CTA. The parent must not lose the FADE result at the moment of moving on.
3. **Uncertainty and trust:** the parent must be told plainly:
   - what is settled (the step stabilized);
   - what is not yet ready (the next step).
   No implied timing. No implied progress percentage.
4. **If no new Target can yet be proposed:**
   - The screen says that the next step is not ready yet.
   - It keeps the closed result as a fact.
   - It tells the parent what is safe to do on the next morning. *What* that is, is a Product + Professional decision (see OPEN PRODUCT DECISION).
   - It must not leave the parent without any morning instruction, because the current plan is closed.

### MINIMUM NEXT-ACTION REQUIREMENT

- **At least one parent action** that does not end in an error.
- The action must lead to a defined state that is stable across reload or, given no persistence, at least stable within the session.
- **Candidate classes.** 06 does not choose; these are for Product to decide:
  - (a) an explicit end-of-route / return state that holds the result;
  - (b) a canonical re-assessment entry, i.e. a new description, already a canonical command in ASSESSING;
  - (c) a check-morning flow, if Professional confirms it applies;
  - (d) continuing the stabilized step meanwhile — **only** with Professional confirmation, because FADE closes the target.

### FORBIDDEN INFERENCE

The parent must not be led to infer any of these:
- that the success was lost or invalid;
- that the system failed because of something the parent reported;
- that help should go back up;
- that the child has "finished" independence in this area;
- that a specific next target exists;
- that continuing the old plan is required, or forbidden (neither is established);
- that a retry will work.

### VOICE REQUIREMENT — not final copy

- Spoken Hebrew, neutral grammatical form (RT-09).
- No technical or error register for a known gap.
- No internal terms: FADE, TARGET_RECHECK, Recheck, "בדיקה מחדש" as a system process.
- One clear statement of the result, one statement of what is not ready, and one action.
- No counting language (RT-10 / S13), no praise inflation, no promise of timing.
- The CTA label must not promise a result the route cannot deliver.
- The FADE presentation strings remain RELEASED PRESENTATION VALUE; Voice owns them (contract §24.5).

### OPEN PRODUCT DECISION

| ID | Question | Owner |
|---|---|---|
| F-1 (OD-P1-09) | What state follows the recheck CTA on the public path when no next target is ready? | Product |
| F-2 | Which minimum action is offered: (a), (b), (c), (d) or a combination? | Product, + Professional for (c) and (d) |
| F-3 | Does a check morning apply after LH-B2-02 FADE, for which ages, and what does it contain? (KGR §3, KG-016) | Professional |
| F-4 | Rule: a predictable product gap may never surface as `technical_error`? | Product → Contract |
| F-5 | Given no persistence, what does "next step not ready" mean across a reload? | Product (P8 / P10) |

## A.2 FIXTURE / DEMO PATH (SOURCE-INSPECTED · not parent-facing in Production)

- **Route:** F20 → F21 → `TARGET_PROPOSED`.
  - `RECHECK_AFTER_FADE` succeeds here (PROCEED).
  - `RESOLVE_PLANNING` is offered.
  - The failure comes at the next step: planning resolution for the proposed target.
- **06 did not run this path.** It is reported per Main CT and code inspection.
- **Requirement if this path ever becomes parent-facing:**
  - A proposed target that cannot be planned must not be shown as ready.
  - The A.1 requirements apply unchanged at the planning step.
- **Not merged with A.1.** No requirement in A.1 depends on this path.

---

# B. ADJUST — no approved alternative

## CURRENT STATE (RUNTIME-VERIFIED on LH-B2-02; SOURCE-INSPECTED on K2 / DR-B1-01)

**Before** (`D16`):
- ADJUST result. Released label: "משנים את התכנית".
- A progress reflection line that uses "שנספרו" (RT-10, HOLD).
- One CTA: REPLAN_AFTER_ADJUST.

**After** (`D17`):
- `REPLANNING → COVERAGE_GAP(adjust_replanning)`.
- Title "אין עדיין תכנית מתאימה". The text says:
  - the current plan doesn't continue as usual;
  - the target is kept;
  - no approved alternative plan exists right now.
- **Zero actions** (`allowedNextActions = []`, contract §37.2).

**Canonical state:**
- Active Target **kept**.
- `activePlanningInstanceRef = null`: the current plan is cleared.

**K2:** the same route and the same copy (`K2-ADJUST-GAP`, `actions: []`).

**The ADJUST reason can differ:**
- `support_insufficient`, `breakdown_shifted`, `capability_recheck`;
- `parent_execution_block` (Rule 5).

All of them reach the same dead end.

### PARENT KNOWS

- The plan as it was is not working well enough.
- The target is still the target.
- There is no new plan yet.

### PARENT DOES NOT KNOW

- What to do tomorrow morning:
  - The plan was cleared.
  - Nothing says whether to keep using it, stop, or wait.
- Whether something will change, and when.
- Why ADJUST happened, at a level that is useful to the parent. The reflection is the only explanation, and it is on HOLD.
- That, for `parent_execution_block`, the issue was keeping the plan's timing, not the plan itself. The current copy says "changing the plan" regardless of reason.

### TRUTH BOUNDARY

**"No approved alternative" is valid truth:**
- Contract §37.1 / §37.2.
- KG v0.6 §5: BANK_COVERAGE_GAP is not an authoring invitation at runtime.
- KG-007: the +1 branch is DRAFT / NOT FOR ENGINE.
- Packet REV3 §23 item 2 accepts this for K2. No Product source records it for LH.

**Zero actions is not a truth requirement.**
- It is a routing gap: PRODUCT ROUTING GAP (PB-01 / PB-02).
- The code matches the contract. The contract simply defines no parent action.

### EXPERIENCE REQUIREMENT

1. **The parent must understand three things:**
   - this is a gap in what the product currently covers, not a failure of the child or the parent;
   - the target and the reported mornings are kept;
   - what is safe to do next morning (Product + Professional decision).
2. **Reason-aware framing** is required wherever a reason changes what the parent should understand.
   - Above all, `parent_execution_block` must not read as "the plan was wrong" when the issue was holding it.
   - Framing only. No reason codes are exposed (contract §16, §27).
3. **No silent loss of the plan.**
   - The current plan is cleared in canonical state.
   - The parent must therefore not be left believing it is still the active plan, unless Product and Professional decide it is.
4. **Requirements whenever Bank coverage is missing** (generic, also for future tasks):
   - Name the gap as coverage, with no internal term (`COVERAGE_GAP` is a forbidden token).
   - Keep the truth that was already established.
   - Give one defined action.
   - Make no timing promise, unless persistence and a real mechanism exist.
   - Never fall back to generic advice.

### MINIMUM NEXT-ACTION REQUIREMENT

- **At least one parent action** from `COVERAGE_GAP(adjust_replanning)`.
- **Candidate classes.** 06 does not choose:
  - (a) a return / hold state that keeps the Target;
  - (b) continue the last plan as an interim measure — **only** with Professional confirmation, because ADJUST says the support was insufficient;
  - (c) a new description / re-assessment entry;
  - (d) a deliberate pause with an explicit statement of what not to change.
- The chosen action must be valid in canonical state. Today `RETURN_HOME` is never produced for this state, and the plan reference is cleared. Any choice therefore needs a contract change.

### FORBIDDEN INFERENCE AND INVENTION

**Must not be invented:**
- an alternative plan;
- an automatic +1 (Progress §9 err 8);
- an ADJUST → LH-B2-01 mapping;
- generic tips;
- a "try harder" message;
- a new target.

**The parent must not be led to infer any of these:**
- that they failed, or that the child cannot do this;
- that the target was abandoned;
- that the old plan is still the plan (or that it must be abandoned) without a decision;
- that something will arrive by a certain time.

### VOICE REQUIREMENT — not final copy

- Spoken Hebrew, neutral form, no blame and no motive.
- No internal terms (coverage gap, REPLANNING, Bank).
- The ADJUST label and the gap text must agree with each other:
  - the label promises a change;
  - the gap screen says no change is available.
  Today the parent receives both, one after the other. The ADJUST label is under SOURCE TRACE REQUIRED (contract §24.5).
- No counting language (RT-10).
- No timing promise.

### OPEN PRODUCT DECISION

| ID | Question | Owner |
|---|---|---|
| A-1 (PB-01 / PB-02) | When no approved alternative exists after ADJUST, what parent-visible action remains? One decision may cover LH and K2 | Product |
| A-2 | Can the last plan serve as an interim measure, per ADJUST reason? | Professional |
| A-3 | Does REV3 §23 item 2 cover LH, or is a register item needed? | Governance / Main CT |
| A-4 | Reason-specific framing for `parent_execution_block` vs the other reasons | Product + Voice |
| A-5 | Contract change needed for the chosen action (no action exists today) | Product → Contract |

---

## READY FOR PRODUCT DECISION: **YES**

**What is ready:**
- Both routes are framed with verified current state, truth boundaries and minimum requirements.
- The questions Product owns are separated from those Professional owns (F-3, A-2).

**What still needs Professional input:**
- Product can decide F-1, F-2 (options a / b), F-4, F-5, A-1 (options a / c / d), A-3, A-4 and A-5 now.
- Options that keep a plan running (F-2 d, A-1 b) and the check morning (F-3) need Professional input first.

No code. No strings. No Product or Professional truth created.
