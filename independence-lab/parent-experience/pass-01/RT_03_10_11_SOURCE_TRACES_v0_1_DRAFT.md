# RT-03 · RT-10 · RT-11 SOURCE TRACES v0_1_DRAFT

**Status:** DRAFT. NOT SoT. Read-only. No code, copy or Product truth changed.
**Base:** runtime-verified findings on `4499671` (PARENT_EXPERIENCE_TECHNICAL_AUDIT_4499671_v0_1_DRAFT).

---

## RT-03 · The Runtime "if no start" disclosure does not open when the wait ends

### Observed (RUNTIME-VERIFIED)
- After the 60 s wait, "עדיין אין התחלה" becomes enabled.
- The disclosures "מה לא לעשות" and "אם עדיין אין התחלה" both stay closed.
- No hint is rendered.

### Source trace

| Source | Date / status | What it says |
|---|---|---|
| Code_Handoff_Morning_v1_0_FINAL §2.3 | 29.09, FINAL (presentation) | "Default open or closed state: **unchanged from current Product behaviour. This is not a design decision.** Runtime "אם דן לא קם" opens when the wait ends; that is an existing Product action." §3.3 adds the hint "נפתח כשההמתנה נגמרת" |
| CHECKIN_PRACTICE_CONTEXT_HANDOFF_v0_2_FINAL | 30.09 | Check-in only. Says nothing about Runtime |
| 06_ACTIVE_HANDOFF_ALIGNMENT_NOTE_v1_0 | 01.10 | Overrides v1.0 only on items 1–8. None concerns Runtime disclosures |
| REV3 packet | 01.10 | No Runtime presentation content ("Unchanged: … Presentation") |
| ENGINE_ADAPTER_CONTRACT_v0_10 (repo copy) | Contract | Defines the Runtime wait gate for "עדיין אין התחלה" (§4.3 item 7: disabled until `resolvedWaitWindowMs` passes) and `ifNotStart` as resolved content (§21: "ה־Renderer אינו בוחר מתי לעלות מדרגה"). **It defines no open / closed behaviour for any disclosure** |
| Implementation | `4499671` | `ApplicationRenderer.tsx` L33: "Default closed, as the merged disclosure was." No wait-linked open logic. No test asserts auto-open (searched `tests/`) |

### Analysis
- The handoff does not *specify* auto-open. It *describes* it as existing Product behaviour and defers to Product.
- No Product or contract source defines that behaviour.
- The current implementation and its tests do not have it.
- Whether it ever existed before the redesign cannot be checked: the clone is shallow and the pre-PR#24 baseline is not available to 06.
- No later presentation source supersedes §2.3. No later source confirms it either.

### Classification: **AMBIGUOUS**
It is not a clear implementation-fidelity issue (no Product source defines the behaviour). It is not a superseded handoff (nothing later replaces §2.3).

**Needed to resolve:** a Product statement that the Runtime "if no start" disclosure should, or should not, open when the wait ends.
**Owner:** PRODUCT, then CODE if confirmed.

---

## RT-10 · "בקרים שנספרו" on KEEP and ADJUST

### Observed (RUNTIME-VERIFIED)
- KEEP: "עוד אין מספיק בקרים שנספרו כדי לדעת אם הצעד מחזיק. ממשיכים אותו דבר."
- ADJUST: "ברוב הבקרים שנספרו סוף החול לבד לא הספיק…"

### Source trace

**Voice / Copy source:** `src/application/parentLearning/reflectionBank.ts` L1–8, L46–48.
- Header: "Mini Parent-Learning Bank · leaving_home / B2 · v0.3 (approved for PR 1)".
- The bank document itself was **not found** on Drive or in `docs/`.
- No later Voice lock replaces these lines. REV3 §19 keeps existing reflection keys on valid days.

**Controlling Professional source:** PROGRESS_KEEP_ADJUST_FADE_v0_3_3.

| Section | Text | Relevance |
|---|---|---|
| §1 | "Progress קורא רק את שכבה 4 … **אין ספירה של ימי תרגול.**" | Counting *valid attempts* is the model's mechanism (§3 Window). Counting *practice days* is forbidden |
| §8 S13 | "ואסור להציג להורה את הבקרים האלה כ"**לא נחשבו**"" | About non-evidence mornings (V6b) |
| §7 | Staleness must not be shown as reset, loss or failure | Not directly relevant |

**Framework v0.2.1:** §3 "אין ספירה של ימי תרגול" · §6 "אין score, אין streak, אין אחוז".

**Dating:** the bank line predates the 30.9 closure (Progress v0.3 / S13, Framework v0.2). This is wording older than the current Progress truth.

### Analysis
- "בקרים שנספרו" does not state that any morning "לא נחשב".
- But it implies a set of mornings that were counted, and so the existence of mornings that were not.
- **Whether that implication falls under S13 is a judgement.** It is not explicit in the text.
- The phrase describes the model's actual mechanism (valid attempts in the Window), which Progress allows internally. Whether the parent may hear it is not stated.

### Classification: **AMBIGUOUS**
Not an established conflict: S13 forbids an explicit "didn't count" framing, and the line does not say that. Not a confirmed match either: the bank predates S13 and its document cannot be located.

**Needed to resolve:**
- A Voice decision on whether "שנספרו" is acceptable under S13 / Framework §3.
- Locating Parent-Learning Bank LH-B2 v0.3 as a document.

**Owner:** VOICE (+ PROFESSIONAL for the S13 reading).

---

## RT-11 · "היום" looks interactive but does nothing

### Observed (RUNTIME-VERIFIED)
- An underlined text "היום" in the header of every screen.
- Not focusable, no role, no action.

### Source trace

| Source | What it says |
|---|---|
| Code_Handoff_Morning_v1_0_FINAL §2.5 | ""היום": a **text link**, 16 px, underlined, `text-underline-offset: 5px` … It is not a pill." §4 P2-1: "'היום' is a pill instead of an underlined link" |
| Earlier implementation (prototype.css L22) | A bordered **pill / chip** (`.today-anchor`), a static `<span>`. No evidence it was ever interactive |
| Contract v0.10 / HOME reference | Home H1–H4 status lines use "היום…". **No source defines a header "היום" control or its destination.** BUILD_PACKET_v0_9: "Home is an anchor, not a dashboard." |
| Tests | `master-journey.test.tsx` checks only that one `.today-anchor` exists and fits the gutter |
| Implementation | `<span className="today-anchor">היום</span>` (`AppShell.tsx` L19), restyled as a link per §2.5 |

### Analysis
- The presentation source changed only the *visual style* (pill → underlined link).
- It called the element a "text link", which implies interaction.
- No Product source defines what it would link to, and the element was static before and after.
- The presentation therefore now signals interactivity that does not exist.

### Classification: **AFFORDANCE / PRESENTATION ISSUE**

**Intended interaction:** **not established.** The only hint is the word "link" in §2.5. No destination is defined anywhere. 06 does not invent navigation.

**Needed to resolve:** a Product statement on whether "היום" is navigation (and to where) or a static label. If static, the presentation question returns to 06 / Presentation.

**Owner:** PRODUCT, then PRESENTATION (06).
