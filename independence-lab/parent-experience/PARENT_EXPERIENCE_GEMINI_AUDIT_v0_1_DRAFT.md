# PARENT_EXPERIENCE_GEMINI_AUDIT_v0_1_DRAFT

**Project:** מעבדת העצמאות / Independence Lab
**Role:** Parent Experience Control Tower (06)
**Date:** 02.10.2026
**Status:** DRAFT working document. NOT SoT. NOT Product approved.
**Main CT review (02.10.2026):** ACCEPTED AS WORKING AUDIT · PARTIAL SOURCE VERIFICATION. Two corrections applied in this revision: GAP-01 reclassified (§4); the supplied screenshot moved to infrastructure reference (§0.3).
**Audits:** `GEMINI_PARENT_EXPERIENCE_RESEARCH_MASTER_PACK_v0_2_RAW`
**Does not:** create Active SoT, design screens, change Morning, write copy, resolve Safety.

---

## 0. METHOD

### 0.1 How each claim was judged

Each claim was checked in this order, and the first test that applies decides:

1. **Does it contradict canonical Product or Professional truth?** → REJECT.
2. **Does it decide Product logic or Professional meaning?** → PRODUCT DECISION or PROFESSIONAL DECISION. The question it raises is kept; Gemini's answer is not.
3. **Is it about implementation?** → TECHNICAL IMPLEMENTATION, out of scope.
4. **Is it Safety-related?** → PROFESSIONAL DECISION + BLOCKED (Main CT closure 2).
5. **Does it have a verifiable source that supports it at the right strength?**
   - Yes, with low transfer risk → ACCEPT.
   - Plausible but over-stated, weakly sourced or high transfer risk → DOWNGRADE.
   - Source missing, wrong or not checkable here → NEEDS SOURCE VERIFICATION.

**Where authority comes from.** When a Gemini claim restates something that canonical project sources already hold, authority is taken from the project source, never from Gemini. Those rows say so.

**Gemini's Evidence Ledger (Part P) is not evidence.** Its citations were checked separately (§2).

### 0.2 Sources used

| Status | Sources |
|---|---|
| **Canonical** | Master Handoff §13 · ACTIVE_SOT_INDEX_v0_4 · REV3 · Decisions Log v1.0 · Practice vs Evidence v0.2.1 · Observation v0.10 · Progress v0.3.3 · Fact Set v0.2 · Ladder v0.5 · Target v0.6 · Safety Gate v1.0 · Open Decisions Register v1.0 · Voice locks · Code Handoff v1.0 · Check-in handoff v0.2 · Alignment Note |
| **Reference only** | HOME_v0_10_RECONSTRUCTED. The unified contract wins on any conflict |
| **Infrastructure / release reference only** | The file supplied as the "Production screenshot for `4499671`" (see §0.3). Removed from visual product evidence (Main CT) |

### 0.3 Finding on the supplied screenshot

The file (`mcp-claude-in-chrome-blob-…jpg`) is **a Vercel dashboard screenshot**. It shows:
- a **canceled** Production deployment of commit `4499671`;
- branch `release/staging-morning-2026-09-29`;
- "The deployment was canceled because the Ignored Build Step command returned exit code 0."

**It contains no parent-facing screen.** Main CT confirmed: kept only as INFRASTRUCTURE / RELEASE REFERENCE (OD-P1-08). It is not visual product evidence, and nothing about Production accessibility is inferred from it.

**Parent-facing visual coverage of Production available to 06: zero screens.**

### 0.4 Verification limits in this session

The network policy blocks `w3.org`, `arxiv.org` and `pmc.ncbi.nlm.nih.gov`.

| Claim type | How it was verified | Effect |
|---|---|---|
| Citation identity (title, authors, journal) | Search-engine records | Checked |
| WCAG and CSS facts | Standard knowledge, primary pages not fetched | Rated MEDIUM-HIGH, never HIGH |
| Israeli legal claims | Secondary sources only, and they conflict | Kept as NEEDS SOURCE VERIFICATION |

---

## 1. CLAIM-BY-CLAIM CLASSIFICATION

Each row gives a claim ID, the Gemini claim in short, the classification, and the reason with its source.

### Part A · Product framing

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| A1 | The product is structured decision-support, not clinical intervention | ACCEPT (restates canonical) | Authority: the 06 handoff §1, not Gemini |
| A2 | Mobile-first browser web app. No native, PWA or push behaviour may be assumed | PRODUCT DECISION — NOT RESEARCH | Consistent with Code Handoff §2.4 (in-app browsers, safe area). The absence of push or PWA has never been stated as a Product decision |
| A3 | Mobile-browser constraints (dynamic toolbars, focus handling) must be designed for | ACCEPT | See detail block A3 |

### Part B · Cognitive load and alerts

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| B1 | Cognitive Load Theory: intrinsic, extraneous and germane load | DOWNGRADE | Detail block B1 |
| B2 | Filtering and categorising reduce information overload and improve performance | DOWNGRADE | Detail block B2. The citation is wrong (§2) |
| B3a | Reserve strong signals so that people stay sensitive to them (alert fatigue) | DOWNGRADE | Detail block B3a |
| B3b | Aggressive notifications only for critical Safety Stops | PROFESSIONAL DECISION + **BLOCKED** | Safety (Main CT closure 2) |

### Part C · "Organizing Reality"

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| C1 | "Organizing Reality" is a hypothesis and design framework, not a validated model | ACCEPT | Correct epistemic status. Matches handoff §7 ("investigate the hypothesis") |
| C2 | Separating fact from interpretation builds trust and prevents false certainty | DOWNGRADE | Detail block C2. The citation is wrong (§2) |
| C3 | Stating "what it does not mean" curbs negative emotional spirals | NEEDS SOURCE VERIFICATION | No source given. Professional sources use "מה אסור להסיק" as a modelling discipline (Observation §9, Progress §8). That is not evidence of an emotional effect on parents |
| C4 | One Next Action reduces decision fatigue | DOWNGRADE | Detail block C4 |
| C5 | Filter complexity without showing all of it | DOWNGRADE | Allowed only with traceability kept (handoff §7). Detail block C5 |

### Part D · Screen requirements

| ID | Screen | Gemini claim | Classification | Reason / source |
|---|---|---|---|---|
| D1a | Entry | Immediate orientation; highlight only the next action | ACCEPT (already canonical) | Yellow rule: one emphasis per screen (Code Handoff §0). Authority is the lock |
| D1b | Entry | 4.5:1 contrast "for primary actions" | REJECT | Mis-scoped. 4.5:1 is the WCAG text-contrast threshold (SC 1.4.3). Non-text UI components use 3:1 (SC 1.4.11). Ink on `#FFD100` is far above both |
| D2 | Intake | Scaffold data entry in small segments | PRODUCT DECISION — NOT RESEARCH | No canonical source defines Intake for the released flow |
| D3 | Initial Picture | Separate what the parent reported (fact) from the system's assessment (meaning) | ACCEPT (already canonical) | The released timeline already does this: "ממה שסיפרת" → "מה כבר ברור" → "מה עושים עכשיו" (Code Handoff §3.1). It is fact → meaning → one action |
| D4 | Independence Target | 24 × 24 px so the parent can "confidently select" the target | REJECT | 24 × 24 is a WCAG floor; Morning uses 58 px buttons and rows ≥ 48 px. Whether the parent selects a target is undecided Product logic. Target gates belong to Professional SoT |
| D5 | First Plan | Plan as a collaborative, modifiable roadmap | REJECT as requirement → PRODUCT DECISION | No source lets the parent modify the plan. Running a different help sequence is V7: invalid, `parent_unmeasurable`, counts toward Rule 5 (Observation V7, REV3 §13) |
| D6 | Pre-Practice | Minimalist, single next action | PRODUCT DECISION (locked) | Pre-Day is locked (Code Handoff §3.6) with one primary CTA and Disclosures. "Minimalist" is not a reason to reopen it |
| D7 | Practice | Non-intrusive; concurrent logging must not distract | DOWNGRADE | Premise is wrong: Morning has no concurrent logging. The Check-in is retrospective and Runtime has no primary CTA. "Do not compete with the real interaction" stays a plausible principle for Runtime |
| D8 | Check-in | Reduce the burden of retrospective recall | see E1–E5 | |
| D9 | Learning Result | Non-judgmental mapping of fact to meaning | see F1–F6 | |
| D10 | Recheck / Next Target | Transparent reasoning for re-evaluation or advance | PRODUCT + PROFESSIONAL DECISION | OD-P1-09 (FADE → RECHECK_AFTER_FADE). In HOME reference, `TARGET_RECHECK` has presentation = null |
| D11 | Home | The parent must always know where they are in the journey | PRODUCT DECISION | Home H1–H4 exists (reference). A journey-position display risks becoming a score or progress meter (Progress §1, §9 err 9) |

### Part E · Check-in and retrospective reporting

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| E1 | Retrospective reporting is exposed to recall bias | DOWNGRADE | Detail block E1 |
| E2 | Native semantic HTML first | ACCEPT | Detail block E2 |
| E3 | Use `aria-live="polite"` / `role="status"` for inline validation errors | TECHNICAL IMPLEMENTATION — OUT OF SCOPE | Morning has no inline validation errors. It uses `aria-disabled` + `aria-describedby` and one `aria-live` reveal announcement (handoff §7). Verifying it in `4499671` = TECHNICAL AUDIT |
| E4 | Do not rush the parent | DOWNGRADE | Expert inference. Consistent with locks (no auto-scroll, no timer on the Check-in). No external source given |
| E5 | Predefined labels reduce the load of open recall | DOWNGRADE | Detail block E5 |

### Part F · Learning Result communication

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| F1 | Non-evidence: "acknowledge effort without validating incorrect execution" | **REJECT** | Frames the parent as having executed wrongly. Contradicts Framework §4 (deviation is not failure), Decisions Log §14 and REV3 §16 (no context echo, no verdict, no parent reflection) |
| F2 | KEEP = "positive stabilization phase" | **REJECT** | KEEP reasons are `insufficient_evidence` / `mixed` (Progress §4). Calling either "positive" creates false certainty |
| F3 | ADJUST is neutral, a calibration, not a correction | ACCEPT at requirement level (source: Progress) · Gemini wording REJECTED | Progress §9 err 4, S04 ("ADJUST says the intervention was not enough, not that the child cannot"), S07 (parent block says nothing about the child). Phrasing belongs to Voice |
| F4 | FADE = a milestone of child independence | DOWNGRADE → PRODUCT + PROFESSIONAL DECISION | Detail block F4 |
| F5 | No practice: normalise, no blame, no guilt notifications | ACCEPT at requirement level (source: Fact Set §3, Log §10) · "normalise" wording REJECTED | Nothing may be inferred about child, parent or reason. The locked string already exists (Copy Lock Pack) |
| F6 | Insufficient evidence: display uncertainty clearly | PRODUCT DECISION + **gap GAP-02** | Progress §4: "the parent does not need to know the word" (`burst_window` rejected). Showing uncertainty ≠ exposing reason codes. Not defined for KEEP screens (Code Handoff D2: no board) |

### Part G · Trust, transparency, uncertainty

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| G1 | The system must explicitly reveal when it lacks data | DOWNGRADE | Detail block G1 |
| G2 | The UI must let the parent trace the logic from reported facts to meaning | PRODUCT DECISION + **gap GAP-03** | **Potential conflict.** Contract traceability (`sourceObservationRefs`, `ruleFiveWindowRefs`) is not parent-facing. Learning Result forbids echoing reported context (REV3 §16). What the parent may trace is undefined |

### Part H · Voice and microcopy

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| H1 | Trauma-Informed / Emotionally Safe UX is "EVIDENCE-MODERATE" | **REJECT as evidence** | Only source: an addiction-recovery app development blog (IdeaUsher). That is not research. The underlying principle (no shame, no moral value, no motive) already exists in project SoT (H6) |
| H2 | Example: "No practice logged today. We will keep the current plan ready for tomorrow." | REJECT | Locked string exists. "Logged" frames the day as a data record. Wording = Voice |
| H3 | Example: "You chose a different support level today. The system has updated the sequence based on this input." | **REJECT** | False Product logic. Same plan after a non-evidence day; only Rule 5 can produce ADJUST (Log §2, REV3 §10, §15) |
| H4 | Example: "We need a few more days of practice data to determine the next step." | **REJECT** | Implies a count of days. Progress counts valid attempts, never days (§3, §9 err 2). Framework §3: no counting of practice days |
| H5 | Example: Safety Stop "paused … to ensure the foundation is secure" | **REJECT** + BLOCKED | Invents Safety meaning |
| H6 | Tone must be objective, non-judgmental, free of moral evaluation | ACCEPT (restates canonical) | Authority: Framework §6, §7 (Heritage 5, 6, 12), Observation §3ג (no motive), the 06 handoff §9 |

### Part I · Mobile, accessibility, RTL, Hebrew

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| I1 | 100vh can be hidden by browser UI; dvh tracks the visible viewport (Safari 15.4+, Chrome 108+) | ACCEPT (technical fact) | Detail block I1. Its application to Morning = TECHNICAL |
| I2 | WCAG 2.2 SC 2.5.8: 24 × 24 CSS px minimum, with exceptions | ACCEPT (standard), not as a Morning requirement | Detail block I2 |
| I3 | Israeli Regulation 35 requires SI 5568 | NEEDS SOURCE VERIFICATION | Secondary sources agree. No primary legal text checked. Legal, not Parent Experience |
| I4 | SI 5568 (Sept 2023) aligns with WCAG AA | NEEDS SOURCE VERIFICATION | Secondary sources conflict (WCAG 2.0 vs 2.1). Gemini contradicts itself (Part I vs Part P). **No source maps WCAG 2.2 or 24 × 24 into Israeli law. Do not map it** |
| I5 | Civil suits without proof of damage, up to about 69,200 NIS | NEEDS SOURCE VERIFICATION | Gemini's source: a web-design firm's page. Secondary results cite other amounts and other sections. Legal, not Parent Experience |
| I6 | Accessibility widgets give no legal protection; native implementation is mandatory | NEEDS SOURCE VERIFICATION (legal half) · DOWNGRADE (technical half) | Technical half: an overlay does not make inaccessible markup conformant. Plausible, but no primary source given |
| I7 | About 92% of Israelis own a smartphone | NEEDS SOURCE VERIFICATION + not decision-relevant | Mobile-first is already a Product choice. The population is parents of children aged 4–7, not all Israelis. No Parent Experience decision depends on this number |
| I8 | Use `dir="rtl"`; using only `flex-direction: row-reverse` breaks reading and focus order | ACCEPT (principle) | Detail block I8. Morning's state = TECHNICAL AUDIT |
| I9 | ARIA only to bridge semantic gaps; incorrect ARIA reduces accessibility | ACCEPT | Detail block E2 (same evidence) |
| I10 | Heebo or Assistant are a readability choice, not evidence-based | PRODUCT DECISION (locked) | Karantina / Heebo / Assistant are locked and self-hosted (Code Handoff §1.2, Alignment Note item 7). Gemini omits Karantina, the condensed display face used for every Check-in question (H2, 32 px). See GAP-12 |

### Part J · Edge and failure states

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| J1 | Incomplete Check-in: auto-save and allow asynchronous return | PRODUCT DECISION + TECHNICAL | Production has no persistence (REV3 §19). Hidden-group answers live only in session state (handoff §2). Auto-save is a new Product capability. See GAP-07 |
| J2a | Cannot remember: offer "not sure" | DOWNGRADE (bounded by the closed structure) | Canonical structure already decides where uncertainty is offered: UNKNOWN in G2 and G2a, a cannot_recall row in G5, and the `report-completeness = insufficient_after_clarification` path. **G3 is closed as yes/no + breakdown with no UNKNOWN row** (REV3 §3; the Decisions Log overrides the older handoff §4 on this meaning). No change proposed. Experience risk recorded as research question RQ-G3-01 (§4, GAP-01) |
| J2b | Cannot remember: offer "Skip" | **REJECT** | Required groups are answered through UNKNOWN, never skipped (handoff §4). Skip would make missing data indistinguishable from a deliberate answer |
| J3 | Changed context: let the parent append context easily | **REJECT** | G2a is closed, template-specific and source-backed. No generic context taxonomy (Log §13, Fact Set §1 "not supported", G2a Label Pack) |
| J4 | Unexpected events accepted without error states | ACCEPT (restates canonical) | Framework R0: every real practice day is an asset; deviation is not failure. Authority: Framework §1, §4 |
| J5 | Insufficient evidence: the system cannot proceed until more data is gathered | **REJECT** | KEEP(`insufficient_evidence`) continues: "tomorrow the same" (Progress §2, S01). Nothing stops |
| J6 | Coverage gap: acknowledge the gap | PRODUCT DECISION + **gap GAP-05** | `COVERAGE_GAP` exists as a state with presentation = null (HOME reference). Experience undefined |
| J7 | Safety stop: tiered, prominent visual interruption | PROFESSIONAL DECISION + **BLOCKED** | Safety |
| J8 | Technical failure: cache data locally via web storage when offline | **REJECT as requirement** → PRODUCT DECISION + TECHNICAL | No persistence in Production. Local caching of child and parent data is a Product and privacy decision |
| J9 | Lost session: clear resume instructions | PRODUCT DECISION + **gap GAP-07** | A RESUME path exists in the contract (HOME reference §7). The parent's experience of a lost session is undefined |
| J10 | Stale plan: after weeks, ask a neutral re-calibration question | **REJECT as requirement** → PRODUCT + PROFESSIONAL DECISION | Staleness = after 14 days the Window empties, KEEP(`insufficient_evidence`), same plan (Progress §7). Framework O6: must not be presented as reset, loss or failure. A re-calibration question invents Planning logic. See GAP-04 |
| J11 | No next target: celebrate and offer an exit or maintenance path | **REJECT** | FADE closes the target; the next target is *proposed*, Planning approves (Target §4, Progress §2, §6). No-target = holding state (Target delta-0). Heritage 12: recognition is not artificial praise |

### Part K · Gemini's audit of the existing Morning experience

| ID | Gemini claim | Classification | Reason / source |
|---|---|---|---|
| K1 | Predefined G2 labels: plausible; keyboard and screen-reader support unknown | TECHNICAL IMPLEMENTATION | Labels are locked. Accessibility behaviour is specified in handoff §7. Verifying it in Production = TECHNICAL AUDIT |
| K2 | 100vh vs dvh: potential conflict | DOWNGRADE → TECHNICAL | The CTA is in flow, never fixed or sticky (Code Handoff §2.4), so the described failure does not apply. The residual Entry full-height block = TECHNICAL AUDIT |
| K3 | Check-in copy tone: SUPPORTED | DOWNGRADE → NEEDS TESTING | Gemini has no parent data. At most: consistent with the principles |
| K4 | RTL via CSS mirroring: potential conflict | TECHNICAL IMPLEMENTATION | Speculation. The release passed 06 Live Staging QA, which is not an accessibility audit |

### Part L · Research gaps Gemini proposed

| ID | Gap | Classification | Note |
|---|---|---|---|
| L1 | Emotional fatigue after 30+ days of stalled progress | ACCEPT as research gap | Sharpened as GAP-11 (repeated non-evidence days, repeated KEEP) |
| L2 | Use while holding a child or under physical disruption | ACCEPT as research gap | Relevant to Runtime (GAP-10) |
| L3 | Do parents understand FADE, or read it as help withheld? | ACCEPT as research gap | Linked to OD-P1-09 and GAP-06 |
| L4 | Does hyper-neutral language read as cold to Israeli parents? | ACCEPT as research gap | Tension with Heritage 3 ("precision is the warmth"). Owner: Voice + 06 |

### Part M · Gemini's proposed document family

| ID | Proposal | Classification | Reason |
|---|---|---|---|
| M1 | Architecture spec: grids, dvh, breakpoints | REJECT | Pixel and engineering scope, not Parent Experience (handoff §14) |
| M2 | Accessibility & RTL engineering standard | TECHNICAL IMPLEMENTATION | 06 writes *requirements* (ACCESSIBILITY_RTL_MOBILE_REQUIREMENTS). Engineering standards belong to Code |
| M3 | Voice & tone manual for trauma-informed microcopy | REJECT | Main CT closure 1: Voice owns strings; 06 owns communication requirements. "Trauma-informed" is unsourced (H1) |
| M4 | Sensemaking & cognitive-load patterns, including alert tiering | DOWNGRADE | Folds into PARENT_EXPERIENCE_PRINCIPLES. Alert tiering is Safety and blocked |

The handoff §13 document family remains the plan.

### Part O · Gemini's 40 questions

**Kept as research or testing questions:** 1, 3, 4, 5, 6, 8, 9, 10, 11, 13, 14, 16, 17, 18, 23, 24, 27, 28, 30, 32, 33, 34, 36, 38, 39, 40.

**Premise rejected:**

| Q | Rejected premise |
|---|---|
| 19 | "Undiagnosed ADHD": a diagnostic framing; the product does not diagnose |
| 20 | "Bottom bar": none exists; the CTA is in flow |
| 21 | Push notifications as the adherence mechanism: not a Product decision |
| 25 | "Skip button": J2b |
| 26 | "Multiple targets active": one active target per child (D-006, Target §4) |
| 35 | "Manually appends context": J3 |

**Routed elsewhere:**

| Q | Route |
|---|---|
| 2 | Safety, BLOCKED |
| 7 | Covered by L2 |
| 12 | Intake undefined, PRODUCT |
| 15 | TECHNICAL |
| 22 | Presupposes auto-save, PRODUCT |
| 29 | TECHNICAL |
| 31 | Answered: Morning targets exceed 24 × 24 |
| 37 | TECHNICAL + GAP-07 (swipe-back loses Check-in state) |

---

## 2. GEMINI EVIDENCE LEDGER (PART P) · CITATION CHECK

| Ledger entry | What Gemini states | What the cited record actually is | Verdict |
|---|---|---|---|
| Fact vs Meaning | "Tankelevitch et al., 2024, CHI / arXiv", URL arXiv 2606.02260 | arXiv 2606.02260 = *Guided Sensemaking: Agents in Collaborative Deliberation*, Bhatia & Parent (2026). A conceptual design for multi-agent discourse in educational and civic contexts | **Misattributed.** Wrong authors, wrong year, wrong venue. Conceptual paper, no outcome data. Not about parents |
| Cognitive load | "O. Waller et al., 2023, Int J Environ Res Public Health, DOI 10.3390/ijerph18168503 (PMC10322198)" | PMC10322198 = *Dealing with information overload: a comprehensive review*, Arnold, Goldschmitt & Rigotti, Frontiers in Psychology 2023, DOI 10.3389/fpsyg.2023.1122200. Work and organisational context | **Misattributed.** Wrong authors, journal and DOI. The real paper is a review of workplace information overload |
| Alert fatigue | "Li et al., 2024, ACM / PMC11742207", strength "High" | PMC11742207 = *Enhancing prehospital decision-making…*, BMC Medical Informatics and Decision Making, Jan 2025. Semi-structured interviews with **20 EMS providers** | Real paper, wrong venue and year. **Strength is overstated:** qualitative, n = 20, paramedics. Not "High" |
| Target size | WCAG 2.2 SC 2.5.8 via a third-party explainer | The standard itself is real | Correct summary. The source should be W3C, not a blog. Gemini omits the "equivalent control" exception |
| dvh | CSS Values 4 / MDN | Real | Correct |
| RTL / DOM | SimpleLocalize blog | Vendor blog. The underlying requirement is real (WCAG 1.3.2, 2.4.3) | Principle correct, source weak |

**Bibliography (Part N / numbered list).** Of 31 references:
- **About 11 are not research or standards**: company accessibility statements, a cookie-banner blog, a Lovable course site, a web-font library, a press kit, a web-design legal page, a recovery-app blog.
- **Legal claims rest on commercial pages**, not on the regulations or the Standards Institution text.
- Numbering is inconsistent between the inline text, Part N and the numbered list. Several "[cite: n]" values do not resolve.

**Conclusion:** Part P is rejected as an evidence base. Three of its six entries have identity or strength errors.

---

## 3. DETAIL BLOCKS · ACCEPT AND DOWNGRADE

### A3 · Mobile-browser constraints
- **CLAIM:** Mobile browsers change the visible viewport (toolbars, keyboards, in-app webviews), and parent-facing actions must stay reachable.
- **SOURCE:** Code Handoff v1.0 §2.4 (canonical), which already sets an in-flow CTA, a safe-area inset, in-app browser acceptance and keyboard handling. Gemini adds nothing new.
- **SOURCE TYPE:** Canonical Product presentation spec + technical fact.
- **WHAT IT SUPPORTS:** Treating reachability of the single next action as an experience requirement on every screen.
- **WHAT IT DOES NOT SUPPORT:** Any layout change to Morning; any claim about how `4499671` behaves.
- **TRANSFER RISK:** Low.
- **CLASSIFICATION:** ACCEPT.
- **CONFIDENCE:** HIGH for the requirement. UNKNOWN for Production behaviour (TECHNICAL AUDIT).

### B1 · Cognitive Load Theory
- **CLAIM:** Mental effort divides into intrinsic, extraneous and germane load. Reducing extraneous load frees capacity.
- **SOURCE:** Gemini cites PMC12246501 (health-design application) and an MDPI paper whose title is "Challenging Cognitive Load Theory". Neither was retrievable here.
- **SOURCE TYPE:** Instructional-design theory applied to health interfaces.
- **WHAT IT SUPPORTS:** A design heuristic: remove effort that does not serve the parent's task (clutter, ambiguous wording, unnecessary choices).
- **WHAT IT DOES NOT SUPPORT:**
  - Measured effects for parents.
  - The germane-load category as settled. It is contested in the CLT literature; Gemini's own reference [2] challenges it.
  - Hiding information that a decision depends on.
- **TRANSFER RISK:** HIGH. From learners and clinicians to parents at home, often mid-task or after the moment.
- **CLASSIFICATION:** DOWNGRADE to design heuristic.
- **CONFIDENCE:** LOW–MEDIUM.

### B2 · Filtering reduces overload
- **CLAIM:** Filtering and prioritising information reduces overload and errors.
- **SOURCE:** Arnold, Goldschmitt & Rigotti (2023), *Frontiers in Psychology*, systematic review (the real identity of PMC10322198; Gemini cites it incorrectly).
- **SOURCE TYPE:** Systematic review, workplace and organisational context.
- **WHAT IT SUPPORTS:** That information overload is a recognised strain, and that structuring and filtering are common counter-measures.
- **WHAT IT DOES NOT SUPPORT:**
  - Parent outcomes.
  - The claim that hiding data makes parents feel safer (Gemini concedes this).
  - Any specific screen density.
- **TRANSFER RISK:** HIGH. Work email and organisations → family routines.
- **CLASSIFICATION:** DOWNGRADE.
- **CONFIDENCE:** LOW–MEDIUM.

### B3a · Scarce emphasis keeps its meaning
- **CLAIM:** If strong signals are frequent, users stop responding to them.
- **SOURCE:** PMC11742207. Interviews with 20 EMS providers; participants asked for alert prioritisation to reduce alert fatigue.
- **SOURCE TYPE:** Qualitative interview study, clinical emergency setting.
- **WHAT IT SUPPORTS:** A plausible rationale for rationing emphasis. The canonical yellow rule (one emphasis per screen) already does this for visual emphasis.
- **WHAT IT DOES NOT SUPPORT:**
  - Notification design (the product has none decided).
  - Safety-stop behaviour (BLOCKED).
  - Any quantitative threshold.
- **TRANSFER RISK:** HIGH. Paramedics in time-critical care ≠ parents.
- **CLASSIFICATION:** DOWNGRADE.
- **CONFIDENCE:** LOW.

### C2 · Fact separated from meaning
- **CLAIM:** Showing what happened separately from what the system concludes supports trust and guards against false certainty.
- **SOURCE:** Canonical project sources:
  - Framework §2 (four layers);
  - Framework §7 Heritage 4 ("קודם מה שרואים, אחר כך מה שזה אומר");
  - Observation §1א.

  The released Initial Picture timeline already follows this structure. Gemini's citation (arXiv 2606.02260) is misattributed and conceptual.
- **SOURCE TYPE:** Project principle (Heritage = interpretation principle, not SoT) + canonical layering. External evidence: none verified.
- **WHAT IT SUPPORTS:** A Parent Experience requirement: on any screen that shows meaning, the parent can tell which part is their report and which part is the system's conclusion.
- **WHAT IT DOES NOT SUPPORT:**
  - Echoing reported context on the Learning Result (forbidden, REV3 §16).
  - A claim that separation reduces anxiety (Gemini Q8, untested).
  - A fixed four-step UI.
- **TRANSFER RISK:** MEDIUM. The principle is native to the project; the external evidence is not.
- **CLASSIFICATION:** DOWNGRADE (as an external evidence claim). Kept as a project principle under project authority.
- **CONFIDENCE:** MEDIUM for the requirement; LOW for any outcome claim.

### C4 · One Next Action
- **CLAIM:** One clear next action reduces decision fatigue.
- **SOURCE:**
  - Framework §7 Heritage 8 ("רעיון אחד, פעולה אחת, בכל רגע"), an interpretation principle, not SoT.
  - Code Handoff §0 and §2.1 (one yellow emphasis, at most one primary per screen), canonical.
  - Gemini's reference [3] (information-overload review) does not test this.
- **SOURCE TYPE:** Project principle + locked presentation rule. External evidence: none.
- **WHAT IT SUPPORTS:** Every parent-facing screen has at most one primary action, and it is visually unambiguous.
- **WHAT IT DOES NOT SUPPORT:**
  - Removing guardrails or Disclosures ("No guardrail is removed", Code Handoff §2.3).
  - Treating "one action" as "one element on screen".
  - The "decision fatigue" construct as settled.
  - Hiding uncertainty to keep the screen simple (handoff §7).
- **TRANSFER RISK:** MEDIUM.
- **CLASSIFICATION:** DOWNGRADE (as research). Kept as a project hypothesis under handoff §7.
- **CONFIDENCE:** MEDIUM as a design rule; LOW as an outcome claim.

### C5 · Filtering complexity
- **CLAIM:** Real-world complexity can be acknowledged without being shown in full.
- **SOURCE:** Handoff §7 (hypothesis + preserve uncertainty, agency, traceability); Code Handoff §2.3 (Disclosures keep every item reachable).
- **SOURCE TYPE:** Project governance + presentation lock.
- **WHAT IT SUPPORTS:** Progressive disclosure, provided nothing needed for the decision or for safety becomes unreachable.
- **WHAT IT DOES NOT SUPPORT:** Silent omission. Gemini's phrasing ("without visualizing all of it") has no traceability condition.
- **TRANSFER RISK:** LOW within the project.
- **CLASSIFICATION:** DOWNGRADE (bounded).
- **CONFIDENCE:** MEDIUM.

### D7 · Non-intrusive Practice screen
- **CLAIM:** The in-the-moment screen should not compete with the real interaction with the child.
- **SOURCE:** Expert inference. Consistent with Runtime having no primary CTA and one "עכשיו" emphasis (Code Handoff §3.3).
- **SOURCE TYPE:** Expert inference + locked layout.
- **WHAT IT SUPPORTS:** Treating Runtime as a glance surface; a research question for GAP-10.
- **WHAT IT DOES NOT SUPPORT:** Gemini's premise of concurrent data logging, which does not exist.
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** DOWNGRADE.
- **CONFIDENCE:** LOW–MEDIUM.

### E1 · Recall bias in the evening report
- **CLAIM:** A retrospective parent report is vulnerable to recall error and self-presentation bias.
- **SOURCE:**
  - **Observation v0.10 §11 Q1**, canonical. A parent caught in the loop will report "I said it once"; the schema cannot solve this; UNKNOWN until real observations exist.
  - Recall bias in retrospective self-report is a general methodological finding, but Gemini gives no citation.
- **SOURCE TYPE:** Canonical acknowledgement + general methodology (unsourced).
- **WHAT IT SUPPORTS:** Treating Check-in accuracy as an experience risk that wording, order and UNKNOWN paths can reduce but not remove.
- **WHAT IT DOES NOT SUPPORT:** Any magnitude, and any change to locked G1–G5.
- **TRANSFER RISK:** LOW–MEDIUM.
- **CLASSIFICATION:** DOWNGRADE (external). The risk itself is canonical.
- **CONFIDENCE:** HIGH that the risk exists; UNKNOWN size.

### E2 / I9 · Native semantics first; ARIA only to bridge gaps
- **CLAIM:** Use native HTML elements and attributes first. ARIA only where native semantics cannot express the role or state. Wrong ARIA harms access.
- **SOURCE:** W3C *Using ARIA*, first rule of ARIA use; WAI-ARIA Authoring Practices ("No ARIA is better than bad ARIA"). Primary pages were not fetched in this session.
- **SOURCE TYPE:** W3C technical guidance.
- **WHAT IT SUPPORTS:** An accessibility requirement for every parent-facing screen. Already applied in Check-in handoff §7 (`fieldset` / `legend`, `hidden`, minimal ARIA).
- **WHAT IT DOES NOT SUPPORT:** Any statement about how `4499671` is built.
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** ACCEPT.
- **CONFIDENCE:** MEDIUM-HIGH. The standard is stable; not re-fetched here.

### E4 · Do not rush the parent
- **CLAIM:** The Check-in must not pressure the parent.
- **SOURCE:** Expert inference. Consistent with locks: no auto-scroll, instant reveal, no timer (handoff §2).
- **SOURCE TYPE:** Expert inference.
- **WHAT IT SUPPORTS:** No time pressure, countdowns or "complete now" urgency in the Check-in.
- **WHAT IT DOES NOT SUPPORT:** Auto-save or deferred return (J1, Product).
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** DOWNGRADE (no external source).
- **CONFIDENCE:** MEDIUM.

### E5 · Closed options instead of open recall
- **CLAIM:** Predefined options lower the effort of reporting compared with free text.
- **SOURCE:** General recognition-vs-recall finding in cognitive psychology and usability heuristics (unsourced by Gemini). The canonical choice is already closed options (locks).
- **SOURCE TYPE:** General cognitive principle.
- **WHAT IT SUPPORTS:** Keeping the Check-in closed-option.
- **WHAT IT DOES NOT SUPPORT:**
  - That options improve accuracy. They may also cue or skew memory (Gemini Q5, kept).
  - Adding options. Option sets are Professional / Voice.
- **TRANSFER RISK:** LOW–MEDIUM.
- **CLASSIFICATION:** DOWNGRADE.
- **CONFIDENCE:** MEDIUM for lower effort; LOW for accuracy.

### F4 · FADE as a milestone
- **CLAIM:** FADE should present reduced support as the child's independence growing, not as parent performance.
- **SOURCE:** Progress §2 and §6 (FADE closes the target; next target proposed, not opened). Target §4 (closure rule). Heritage 12 (recognition is not artificial praise).
- **SOURCE TYPE:** Canonical Professional logic.
- **WHAT IT SUPPORTS:** FADE must not read as a parent score, and must not imply the next step has started.
- **WHAT IT DOES NOT SUPPORT:**
  - "Milestone" or celebration framing.
  - Any claim on how parents understand FADE (L3, untested).
  - The RECHECK_AFTER_FADE path (OD-P1-09, open).
- **TRANSFER RISK:** MEDIUM.
- **CLASSIFICATION:** DOWNGRADE → PRODUCT + PROFESSIONAL DECISION for the FADE screen.
- **CONFIDENCE:** MEDIUM for the negative requirement; LOW for any positive framing.

### G1 · Revealing missing data
- **CLAIM:** The system should say when it does not yet know.
- **SOURCE:**
  - Locked non-evidence statement: "…אז עוד לא קובעים מה זה אומר על הילד" (Copy Lock Pack). This is already uncertainty communication.
  - Progress S13: must not present non-evidence days to the parent as "didn't count".
  - Progress §4: the parent need not learn reason words.
- **SOURCE TYPE:** Canonical.
- **WHAT IT SUPPORTS:** Uncertainty visible as *what is not yet concluded*, never as *what did not count*, and without reason codes.
- **WHAT IT DOES NOT SUPPORT:**
  - "Insufficient data" banners.
  - Day counts.
  - "Cannot proceed" (J5).
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** DOWNGRADE (bounded by canonical limits).
- **CONFIDENCE:** HIGH for the bounds.

### I1 · Dynamic viewport units
- **CLAIM:** `100vh` can exceed the visible area on mobile; `dvh` tracks the visible viewport. Support starts at Safari 15.4 and Chrome 108.
- **SOURCE:** CSS Values and Units Module Level 4 (W3C); MDN compatibility data. Not fetched here (egress block); consistent with standard knowledge.
- **SOURCE TYPE:** Technical specification.
- **WHAT IT SUPPORTS:** A technical-audit check for any full-height layout (Entry).
- **WHAT IT DOES NOT SUPPORT:**
  - A conflict with Morning. The CTA is in flow (Code Handoff §2.4).
  - The view that `dvh` is always better. It can cause layout shifts while scrolling.
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** ACCEPT (fact) · application = TECHNICAL IMPLEMENTATION.
- **CONFIDENCE:** MEDIUM-HIGH.

### I2 · WCAG 2.2 SC 2.5.8
- **CLAIM:** Pointer targets at least 24 × 24 CSS px (Level AA), with exceptions: spacing, equivalent control, inline, user-agent control, essential.
- **SOURCE:** W3C WCAG 2.2 (2023), SC 2.5.8. Not fetched here.
- **SOURCE TYPE:** Technical standard.
- **WHAT IT SUPPORTS:** A minimum floor.
- **WHAT IT DOES NOT SUPPORT:**
  - A Morning target. Morning already uses 58 px buttons and rows ≥ 48 px (handoff §7).
  - Israeli legal status (I4).
  - Gemini's claim that 24 × 24 suits "parents walking while tapping" (Q31).
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** ACCEPT (standard), not as a design target.
- **CONFIDENCE:** MEDIUM-HIGH.

### I6 (technical half) · Overlays do not deliver conformance
- **CLAIM:** An accessibility widget or overlay does not make inaccessible markup accessible.
- **SOURCE:** None given by Gemini. Widely held position in the accessibility field.
- **SOURCE TYPE:** Practitioner consensus (unsourced).
- **WHAT IT SUPPORTS:** Accessibility requirements apply to the product's own markup.
- **WHAT IT DOES NOT SUPPORT:** Any legal conclusion.
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** DOWNGRADE.
- **CONFIDENCE:** MEDIUM.

### I8 · RTL through `dir`, not visual mirroring
- **CLAIM:** Hebrew UI must declare `dir="rtl"` so the DOM order matches the reading order. Reversing order only visually (e.g. `flex-direction: row-reverse`) separates visual order from reading and focus order.
- **SOURCE:**
  - WCAG 2.x SC 1.3.2 (Meaningful Sequence) and SC 2.4.3 (Focus Order).
  - HTML `dir` attribute.
  - Gemini's sources (vendor blogs) are weak, but the requirement follows from the standard.
- **SOURCE TYPE:** Technical standard.
- **WHAT IT SUPPORTS:** An accessibility requirement for every parent-facing screen.
- **WHAT IT DOES NOT SUPPORT:** Any claim that Morning violates it. Unknown; TECHNICAL AUDIT.
- **TRANSFER RISK:** LOW.
- **CLASSIFICATION:** ACCEPT.
- **CONFIDENCE:** MEDIUM-HIGH.

---

## 4. RETURN

### AUDIT STATUS: PARTIAL

| Area | Status | Why |
|---|---|---|
| Classification | **Complete** | Every meaningful claim in Parts A–P is classified (§1, §2) |
| Source verification | **Incomplete** | Primary standards and legal texts could not be fetched (§0.4). Legal claims I3–I6 and the dvh / WCAG facts stay at the confidence stated |
| Production visual comparison | **Not possible** | No parent-facing Production screen was supplied (§0.3) |

None of the gaps changes any REJECT.

### ACCEPTED CLAIMS (10)

**Restating canonical truth.** Authority comes from the project source, not from Gemini:

| ID | Claim |
|---|---|
| A1 | Decision-support, not clinical |
| D1a | One next action on Entry |
| D3 | Initial Picture separates fact and meaning |
| H6 | Non-judgmental tone |
| J4 | Deviation accepted without error states |

**Standards and technical facts:**

| ID | Claim |
|---|---|
| A3 | Mobile-browser reachability |
| E2 / I9 | Native semantics first, ARIA only to bridge gaps |
| I1 | dvh fact |
| I2 | WCAG 2.5.8 as a floor |
| I8 | RTL via `dir`, DOM order = reading order |

**Epistemic label:**

| ID | Claim |
|---|---|
| C1 | "Organizing Reality" is a hypothesis |

**Accepted at requirement level only, with Gemini wording rejected:**

| ID | Requirement | Source |
|---|---|---|
| F3 | ADJUST is not failure | Progress |
| F5 | No practice → no inference | Fact Set |

**Accepted as research gaps:** L1–L4.

### DOWNGRADED CLAIMS (17)

| Group | IDs |
|---|---|
| Cognitive load and alerts | B1, B2, B3a |
| Organizing Reality | C2, C4, C5 |
| Screens | D7 |
| Check-in | E1, E4, E5, J2a |
| Learning Result | F4 |
| Trust | G1 |
| Accessibility | I6 (technical half) |
| Gemini's Morning audit | K2, K3 |
| Document family | M4 |

### REJECTED CLAIMS (18, plus the Part P ledger and six Part O premises)

**Contradict canonical Product or Professional truth:**

| ID | Rejected claim |
|---|---|
| F1 | "Incorrect execution" |
| F2 | KEEP = positive |
| H3 | "System updated the sequence" |
| H4 | "A few more days of data" |
| J2b | Skip |
| J3 | Free context append |
| J5 | "Cannot proceed" |
| J10 | Stale re-calibration question |
| J11 | Celebrate / no next target |

**Mis-scoped:**

| ID | Rejected claim |
|---|---|
| D1b | 4.5:1 "for primary actions" |
| D4 | 24 × 24 as the Target-screen requirement + parent selects the target |

**Product logic without a source:**

| ID | Rejected claim |
|---|---|
| D5 | Modifiable plan |
| J8 | Offline local caching |

**Unsourced as evidence:** H1 (Trauma-Informed UX, blog source).

**Copy examples:** H2, H5.

**Document proposals:** M1, M3.

**Evidence base:** Part P ledger.

**Premises of Part O questions:** 19, 20, 21, 25, 26, 35.

### SOURCE VERIFICATION REQUIRED

| ID | Item | Who verifies |
|---|---|---|
| I3 | Regulation 35 → SI 5568 | Legal / primary regulation text |
| I4 | SI 5568 (2023) WCAG version. **Until verified, no WCAG 2.2 criterion is presented as an Israeli legal requirement** | Standards Institution primary text |
| I5 | Statutory compensation amount and section | Legal |
| I6 | Legal status of accessibility widgets | Legal |
| I7 | Smartphone ownership statistic (low priority, not decision-relevant) | Knesset research centre / CBS primary |
| C3 | Emotional effect of "what it does not mean" | Parent Experience research |
| B1 | CLT health-design reference PMC12246501 | Not retrievable here |

### PRODUCT DECISIONS FOUND

| # | Decision | Source of the question |
|---|---|---|
| P1 | Are push notifications or PWA in or out of scope? | A2, Q21 |
| P2 | Intake: does it exist in the released journey, and in what form? | D2 |
| P3 | Can a parent modify a plan or choose a target? | D4, D5 |
| P4 | Home: journey-position visibility without becoming a score | D11 |
| P5 | Recheck / Next Target experience (with Professional, OD-P1-09) | D10 |
| P6 | KEEP screen: what uncertainty is visible, without reason codes | F6, GAP-02 |
| P7 | Parent-facing traceability vs the no-echo rule | G2, GAP-03 |
| P8 | Auto-save, deferred return, persistence | J1 |
| P9 | Offline / local caching and its privacy implications | J8 |
| P10 | Lost-session and resume experience | J9 |
| P11 | COVERAGE_GAP, HOLDING, REPLANNING, TARGET_RECHECK experiences (presentation null) | J6 |
| P12 | Staleness presentation (Framework O6) | J10 |
| P13 | FADE screen framing (with Professional) | F4 |

### PROFESSIONAL DECISIONS FOUND

| # | Decision | Status |
|---|---|---|
| PR1 | Safety stop experience and which stop modes apply to Morning (B3b, H5, J7, Q2) | **BLOCKED** (Main CT closure 2) |
| PR3 | FADE → RECHECK_AFTER_FADE meaning (OD-P1-09) | Open |
| PR4 | Whether environment_check / bottleneck_observation count as practice days in parent-facing continuity (OD-P1-01) | Open |
| PR5 | `[NEXT_STEP_STATEMENT]` meaning on a non-evidence day | Open, already known |

PR2 (G3 cannot-recall) was withdrawn by Main CT correction and is now research question RQ-G3-01. IDs are not renumbered.

### TECHNICAL IMPLEMENTATION CLAIMS

TECHNICAL AUDIT of Production `4499671` required. No change requested.

| # | Check | Source |
|---|---|---|
| T1 | `dir="rtl"` declared; DOM order = reading order = focus order | I8, K4 |
| T2 | Check-in semantics as specified in handoff §7 (`fieldset` / `legend`, arrow keys, `hidden`, `aria-live`, `aria-disabled` + `aria-describedby`) | E2, K1 |
| T3 | Full-height layouts (Entry) and viewport units; CTA reachable in iOS Safari, Android Chrome and one in-app browser | I1, K2, A3 |
| T4 | Target sizes: Q1 buttons 58 px; rows ≥ 48 px | I2 |
| T5 | Text scaling to 200% without loss (WCAG 1.4.4) | Q33 |
| T6 | iOS swipe-back and in-app back during Check-in: what is lost | Q37, GAP-07 |
| T7 | Contrast of `--muted` and `--text-2` text on `--page` and `--beige` | D1b |

Out of 06 scope: E3 (inline-error ARIA pattern), M2 (engineering standard).

### NEW PARENT EXPERIENCE GAPS

| ID | Gap | Why it matters | Owner to decide | Priority |
|---|---|---|---|---|
| **GAP-01 → RQ-G3-01** | **Reclassified by Main CT.** PARENT EXPERIENCE RESEARCH QUESTION + POTENTIAL FUTURE PRODUCT REOPEN REQUEST. Not a current Product gap, not a REV3 contradiction, not an implementation bug. Canonical: G3 = `successSignalMet` yes/no + `breakdownObserved` when no, no UNKNOWN row; separate `report-completeness = insufficient_after_clarification` path exists | Question: what experience risk exists when a parent cannot confidently recall G3, given the closed structure? No UNKNOWN or Skip is proposed. REV3 is not reopened | 06 research (W2) | MEDIUM |
| GAP-02 | KEEP (`insufficient_evidence` / `mixed`) has no experience definition: what uncertainty is shown, without reason codes or counts | The most frequent outcome in early weeks (Progress S01, S09, S13) | Product + Voice; 06 writes requirements | HIGH |
| GAP-03 | Parent-facing traceability vs "do not echo context" | Trust needs some traceability; the no-echo rule bans the obvious form | Product | MEDIUM |
| GAP-04 | Staleness presentation (Framework O6) | Must not read as reset, loss or failure | Product + Voice | MEDIUM |
| GAP-05 | COVERAGE_GAP, HOLDING, REPLANNING, TARGET_RECHECK: presentation = null, no 06 boards | The parent hits states with no defined experience | Product | MEDIUM |
| GAP-06 | FADE comprehension and the FADE → RECHECK path (OD-P1-09) | Parents may read FADE as help withdrawn (L3) | Product + Professional | MEDIUM |
| GAP-07 | Mid-Check-in loss (no persistence; swipe-back; in-app browser reload) | A lost report means no Observation and no measured attempt | Product + TECHNICAL | MEDIUM |
| GAP-08 | Self-report bias (Observation §11 Q1) as an experience-design problem | Wording and order cannot fix it but can reduce it | 06 research, within locks | MEDIUM |
| GAP-09 | Time between the morning and the evening report (H4 pending state) | Recall decays; no data on actual delay | 06 research | LOW–MEDIUM |
| GAP-10 | Runtime used one-handed, mid-routine, with a child present | Runtime is the only in-the-moment screen | 06 research | MEDIUM |
| GAP-11 | Repeated non-evidence days or repeated KEEP: the same locked statement day after day | Long-term emotional effect untested (L1); S13 forbids "didn't count" framing | 06 research + Voice | MEDIUM |
| GAP-12 | Karantina (condensed display face) for Check-in questions: legibility under stress or small screens | Locked choice; untested for this use | NEEDS TESTING only. Not a reopen | LOW |
| GAP-13 | **No parent-facing Production visual exists for 06** (§0.3) | Every Production claim stays UNKNOWN | Main CT: supply screens or authorise capture | HIGH for W5 |
| GAP-14 | Safety experience | **BLOCKED** | Professional + Product | BLOCKED |

### READY TO OPEN PARALLEL WORKSTREAMS: YES — LIMITED

**Recommended to open now.** Each has a verified base from this audit:

| Workstream | Scope |
|---|---|
| W1 | Parent Journey & IA, released Morning only |
| W2 | Check-in & Retrospective Reporting. Inputs: GAP-01, 07, 08, 09 |
| W5 | Mobile / Accessibility / RTL. Requirements and a TECHNICAL AUDIT request list (T1–T7) only, until GAP-13 is closed |
| W7 | Evidence Ledger + Gap Registry, seeded from this audit |

**Not yet:**

| Workstream | Waits on |
|---|---|
| W3 Learning Results | P6, P13, GAP-02 |
| W4 Voice / Trust / Uncertainty | Can start in principle under closure 1. Recommend after W2's first output, so trust requirements build on the Check-in |
| W6 Edge States | P8–P12 |
| Safety | BLOCKED |

Opening any of these is Main Control Tower's call.

---

Not done, by design: no Active SoT, no screen design, no copy, no Morning change, no Safety interpretation.
