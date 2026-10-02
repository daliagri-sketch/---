# W7 · PARENT_EXPERIENCE_EVIDENCE_LEDGER + GAP_REGISTRY v0_1_DRAFT

**Workstream:** W7 · Evidence Ledger + Gap Registry
**Status:** DRAFT. NOT SoT. 06 is the only reconciliation layer for these registers.
**Rule:** items are recorded, not resolved. An item goes to Main CT only when it blocks an authorised workstream (W1, W2, W5, W7) or reveals a canonical contradiction.

---

## PART 1 · AUTHORITY CLASSES

Every claim used by 06 carries one of these classes.

| Class | Meaning | Examples |
|---|---|---|
| **CANON-PRO** | Active Professional SoT | Observation v0.10 · Progress v0.3.3 · Framework v0.2.1 · Ladder v0.5 · Target v0.6 · Safety v1.0 · Fact Set v0.2 (source extraction) |
| **CANON-PROD** | Closed Product / Contract / Presentation / Voice | REV3 · Decisions Log v1.0 · Code Handoff v1.0 · Check-in handoff v0.2 · Alignment Note · Voice locks |
| **GOV** | Governance record | Master Handoff · Open Decisions Register · ACTIVE_SOT_INDEX |
| **REF** | Reference only, loses to canon | HOME_v0_10_RECONSTRUCTED · Heritage principles (Framework §7) |
| **INFRA** | Infrastructure / release reference only | The Vercel screenshot |
| **EXT-STD** | External technical standard | WCAG 2.2 · CSS Values 4 · W3C Using ARIA |
| **EXT-RES** | External research, verified identity | e.g. Arnold et al. 2023 |
| **EXT-UNV** | External, not verified | Legal claims · Gemini citations not checked |
| **INFER** | Expert inference by 06 | Labelled, never closes truth |
| **RAW** | Gemini raw pack | Input to audit only |

---

## PART 2 · EVIDENCE LEDGER (entries usable by 06 now)

### Ledger columns

Every entry records: **CLAIM · SOURCE · SOURCE TYPE · POPULATION · CONTEXT · SUPPORTS · DOES NOT SUPPORT · TRANSFER RISK · CONFIDENCE · CLASS**.

Each entry below lists **CLAIM** and **SOURCE**. The remaining fields are in the Gemini audit §3 detail block named in the entry's Source cell.

### Source verification state (this pass)

Main CT approved read-only access to `w3.org`, `arxiv.org` and `pmc.ncbi.nlm.nih.gov`. **The session's environment network policy still blocks all three** (connection refused, re-tested 02.10.2026). The approval does not change the sandbox. The person must add the three hosts under Network access in the environment settings. Until then:

- EXT-STD entries stay at MEDIUM-HIGH.
- Citation identities rest on search-engine records.

| ID | Claim | Source | Class | Confidence | Verification state |
|---|---|---|---|---|---|
| EL-01 | Reaching the one next action is a requirement on every screen, in mobile browsers and webviews | Code Handoff §2.4 · audit A3 | CANON-PROD | HIGH | n/a |
| EL-02 | Native semantics first; ARIA only to bridge gaps | W3C Using ARIA, rule 1 · audit E2 | EXT-STD | MEDIUM-HIGH | Primary page not fetched (network) |
| EL-03 | `dir="rtl"`; DOM order = reading order = focus order | WCAG 1.3.2, 2.4.3 · audit I8 | EXT-STD | MEDIUM-HIGH | Not fetched |
| EL-04 | 24 × 24 CSS px is a floor (SC 2.5.8, AA), not a design target | WCAG 2.2 · audit I2 | EXT-STD | MEDIUM-HIGH | Not fetched |
| EL-05 | `dvh` tracks the visible viewport; Safari 15.4+, Chrome 108+ | CSS Values 4 / MDN · audit I1 | EXT-STD | MEDIUM-HIGH | Not fetched |
| EL-06 | Fact and meaning are shown separately where meaning is shown | Framework §2, §7-4 · Observation §1א · audit C2 | CANON-PRO + REF | MEDIUM | External evidence: none verified |
| EL-07 | At most one primary action per screen; no guardrail removed | Code Handoff §0, §2.1, §2.3 · audit C4 | CANON-PROD | HIGH (rule) / LOW (outcome) | n/a |
| EL-08 | Retrospective parent reports carry self-report and recall bias | Observation §11 Q1 · audit E1 | CANON-PRO | HIGH (exists) / UNKNOWN (size) | n/a |
| EL-09 | Information overload is a recognised strain; filtering is a common counter-measure | Arnold, Goldschmitt & Rigotti 2023, Front. Psychol., DOI 10.3389/fpsyg.2023.1122200 · audit B2 | EXT-RES | LOW–MEDIUM for transfer | Identity verified by search record. Full text not fetched |
| EL-10 | Prioritising alerts is a stated user need among EMS providers | BMC Med Inform Decis Mak, Jan 2025, PMC11742207 · audit B3a | EXT-RES | LOW for transfer | Identity verified by search record |
| EL-11 | Uncertainty shown as "not yet concluded", never "did not count", without reason codes | Copy Lock Pack · Progress §4, S13 · audit G1 | CANON | HIGH (bounds) | n/a |
| EL-12 | ADJUST must not read as a child or parent failure | Progress §9 err 4, S04, S07 · audit F3 | CANON-PRO | HIGH | n/a |
| EL-13 | No-practice day: nothing inferred about child, parent or reason | Fact Set §3 · Log §10 · audit F5 | CANON | HIGH | n/a |
| EL-14 | Non-judgmental, no motive, no moral value | Framework §6–7 · Observation §3ג · audit H6 | CANON + REF | HIGH | n/a |
| EL-15 | Spec-level token contrast ratios (W5 §2.6) | Code Handoff §1.1, computed by 06 | INFER (calculation on CANON-PROD tokens) | HIGH for arithmetic | Production rendering not measured |

### Rejected as evidence (do not cite)

| Item | Reason |
|---|---|
| Gemini Part P ledger | Rejected as a whole |
| "Tankelevitch et al. 2024" for arXiv 2606.02260 | Misattributed. Actual record: Bhatia & Parent 2026, conceptual paper |
| "O. Waller et al., IJERPH" for PMC10322198 | Misattributed |
| IdeaUsher blog as evidence for Trauma-Informed UX | Not research |
| Company accessibility statements, cookie-banner blog, Lovable site, font library, press kit | Not evidence |

### Unverified, held (EXT-UNV)

| Item | Gemini audit ID |
|---|---|
| Regulation 35 → SI 5568 | I3 |
| SI 5568 (2023) WCAG version | I4 |
| Statutory compensation amount | I5 |
| Legal status of widgets | I6 |
| 92% smartphone ownership | I7 |
| CLT health-design reference PMC12246501 | B1 |
| Emotional effect of "what it does not mean" | C3 |

**Rule:** no WCAG 2.2 criterion is described as Israeli law until I4 is verified against the primary Israeli source.

---

## PART 3 · GAP REGISTRY

### 3.1 Product items (13, recorded, not resolved)

Fields: ID · claim / question · why it matters to Parent Experience · current source · owner · blocks which workstream · blocking / non-blocking.

| ID | Claim / question | Why it matters to PX | Current source | Owner | Blocks | Status |
|---|---|---|---|---|---|---|
| P1 | Are push notifications or PWA in or out of scope? | Decides whether continuity can rely on reminders | None (audit A2) | PRODUCT | W6 (HOLD) | NON-BLOCKING |
| P2 | Intake / Open Description: position and content in the released journey | W1 cannot place it in the sequence | Code Handoff D2 (no board) | PRODUCT | W1 (one node only) | NON-BLOCKING. W1 marks it NOT IN SOURCE |
| P3 | Can the parent modify a plan or choose a target? | Agency vs V7 invalidity | Observation V7 · REV3 §13 | PRODUCT (+ Professional) | W3, W4 (HOLD) | NON-BLOCKING |
| P4 | Home: journey position without becoming a score | Orientation vs "no score" | HOME (REF) · Progress §1 | PRODUCT | W1 (observation W1-F3 only) | NON-BLOCKING |
| P5 | Recheck / Next Target experience | The parent meets re-evaluation | OD-P1-09 · HOME (REF) | PRODUCT + PROFESSIONAL | W3 (HOLD) | NON-BLOCKING |
| P6 | KEEP screen: what uncertainty is visible, without reason codes or counts | Most frequent early outcome | Progress §4, S01, S13 · Code Handoff D2 | PRODUCT (+ Voice) | W3 (HOLD) | NON-BLOCKING now. **Blocking for W3** |
| P7 | Parent-facing traceability vs the no-echo rule | Trust vs verdict risk | REV3 §16 · audit G2 | PRODUCT | W4 (HOLD) | NON-BLOCKING now. **Blocking for W4** |
| P8 | Auto-save, deferred return, persistence | A lost report = no Observation | REV3 §19 · handoff §2 | PRODUCT + TECHNICAL | W6 (HOLD) | NON-BLOCKING |
| P9 | Offline / local caching (privacy) | Data held on a shared family phone | None (audit J8) | PRODUCT | W6 (HOLD) | NON-BLOCKING |
| P10 | Lost-session and resume experience | Recovery without blame | HOME §7 (REF, RESUME) | PRODUCT | W6 (HOLD) | NON-BLOCKING |
| P11 | COVERAGE_GAP, HOLDING, REPLANNING, TARGET_RECHECK experiences | Presentation = null | HOME §2 (REF) | PRODUCT | W1 (recorded as W1-F4), W6 | NON-BLOCKING |
| P12 | Staleness presentation | Must not read as reset, loss or failure | Framework O6 · Progress §7 | PRODUCT + Voice | W3 / W4 (HOLD) | NON-BLOCKING |
| P13 | FADE screen framing | FADE closes, does not open | Progress §2, §6 · Target §4 | PRODUCT + PROFESSIONAL | W3 (HOLD) | NON-BLOCKING now. **Blocking for W3** |

### 3.2 Professional items (recorded, not resolved)

| ID | Claim / question | Why it matters to PX | Current source | Owner | Blocks | Status |
|---|---|---|---|---|---|---|
| PR1 | Which Safety stop modes apply to Morning; Safety experience | Safety is the highest-stakes experience | Safety Gate v1.0 vs Framework §7 · HOME §9.2 (REF) | PROFESSIONAL + PRODUCT | Safety (BLOCKED) | **BLOCKED** (Main CT closure 2) |
| PR3 | FADE → RECHECK_AFTER_FADE meaning | What the parent sees after FADE | OD-P1-09 | PROFESSIONAL + PRODUCT | W3 (HOLD) | NON-BLOCKING |
| PR4 | environment_check / bottleneck_observation as practice days in continuity | Whether the parent sees those mornings as practice | OD-P1-01 | PROFESSIONAL + PRODUCT | W3 (HOLD) | NON-BLOCKING |
| PR5 | `[NEXT_STEP_STATEMENT]` meaning on a non-evidence day | The result has no "what next" beyond the CTA | Alignment Note §3 · REV3 §16 | PROFESSIONAL / Voice | W3 (HOLD) | NON-BLOCKING |

PR2 was withdrawn and became RQ-G3-01 (Main CT correction).

### 3.3 Parent Experience research questions

| ID | Question | Source | Workstream | Status |
|---|---|---|---|---|
| RQ-G3-01 | What experience risk exists when a parent cannot confidently recall G3, given the closed structure? (POTENTIAL FUTURE PRODUCT REOPEN REQUEST; no change proposed) | REV3 §3, §3a, §18 · Main CT | W2 | OPEN |
| RQ-02 | Self-report bias in G4 / G5 | Observation §11 Q1 | W2 CR-02 | OPEN |
| RQ-03 | Delay between morning and report | W2 CR-06 · GAP-09 | W2 | OPEN |
| RQ-04 | Unavailable rows understood? | W2 CR-05 | W2 | OPEN |
| RQ-05 | "Something was different" after G2 = כן | W2 CR-07 | W2 | OPEN |
| RQ-06 | Deviation-day length | W2 CR-10 | W2 | OPEN |
| RQ-07 | No uncertainty slot before the Learning Result | W1-F1 | W1 → W4 | OPEN |
| RQ-08 | Child-preparation content shown twice | W1-F2 | W1 | OPEN |
| RQ-09 | Progress dots read as progress? | W1-F3 | W1 / W5 | OPEN |
| RQ-10 | Runtime glance use, one-handed | GAP-10 · L2 | W1 | OPEN |
| RQ-11 | Repeated non-evidence or KEEP days: long-term effect | GAP-11 · L1 | W3 (HOLD) | OPEN |
| RQ-12 | FADE understood as help withdrawn? | L3 | W3 (HOLD) | OPEN |
| RQ-13 | Neutral language read as cold? | L4 | W4 (HOLD) | OPEN |
| RQ-14 | Karantina H2 legibility under stress | GAP-12 | W5 | OPEN, LOW |

### 3.4 Voice observations (routed to the Voice owner, not re-locked by 06)

| ID | Observation | Status |
|---|---|---|
| V-01 | Mixed grammatical person in G5 and across G2 / G4 / G5 (W2 CR-03) | NON-BLOCKING |
| V-02 | `[REQUIRED_HINT]`, `[MORE_QUESTIONS_APPEARED]` and the footer note have no locked string in the supplied Voice locks (W2 CR-09) | NON-BLOCKING |
| V-03 | Copy Lock Pack still lacks the G2 options and three G5 labels (REV3 open item 3) | NON-BLOCKING, governance |

### 3.5 Technical gaps (from W5)

| ID | Gap | Status |
|---|---|---|
| TG-01 | No focus-indicator spec | NON-BLOCKING |
| TG-02 | No error-state experience for the Check-in | → W6 (HOLD) |
| TG-03 | Radio border at the 3:1 line | Audit judgement needed |
| TG-04 | Runtime "עדיין אין התחלה" active or inactive | Audit needed |
| TG-05 | No parent-facing Production visual available to 06 | Blocks running the audit, not writing it |

### 3.6 Escalations to Main CT this pass

**None required by the escalation rule.** No item blocks W1, W2, W5 or W7. No canonical contradiction was found.

Items that will block W3 and W4 when they are opened: P6, P7, P13.
