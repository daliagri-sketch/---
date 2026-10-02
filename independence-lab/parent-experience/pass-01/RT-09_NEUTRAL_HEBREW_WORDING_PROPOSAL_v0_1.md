# RT-09_NEUTRAL_HEBREW_WORDING_PROPOSAL_v0_1

**For:** Voice approval (Dalia), and Professional review for Bank-sourced lines.
**Status:** CANDIDATE wording. NOT LOCKED. No copy, Bank or code change is made.
**Direction (Main CT):**
1. Neutral rewrite.
2. Name omission where natural.
3. Optional grammatical-form data only if it is already legitimately available and required.

No new required data field is proposed.

**Voice protocol:** one recommended variant per field (Voice constitution §7).
**Controlling Product rule:** PRODUCT_ENTRY_FLOW_v0_4 §6: "אם שדה זהות חסר, משתמשים בעברית ניטרלית."

---

## 1. The mechanism already approved in the codebase

The K2 copy already solves this correctly with an `IdentityTemplate`. Its variants are `neutral` (no name), `named` (name, no gendered agreement), `male` and `female`. The resolver picks:

| Situation | Variant used |
|---|---|
| Name + form | `male` or `female` |
| Name only | `named`, if present; otherwise `neutral` |
| No name | `neutral` |

(Source: `identityResolver.ts` L19–31.)

**RT-09 occurs only in strings that bypass this mechanism.** Those strings use generic "הילד", which `renderIdentityText` replaces with the name without changing agreement. The proposals below bring each string to the same pattern: a neutral or named variant that carries no gendered agreement.

## 2. Affected strings

The list comes from a full search of `src/application` at `4499671`.

**Rules used:**
- "Agreement" means a verb, adjective or reflexive that agrees with the child as subject.
- Positions without agreement are safe to fill with the name and are **not** changed: "ליד הילד", "של הילד", "לכיוון הילד", "עבור הילד", "על הילד", "בגלל הילד".
- Locked Check-in strings are not substituted and are not touched.

| # | Screen · component | Current (as rendered with a name) | Source | Reached in released flow? |
|---|---|---|---|---|
| 1 | Open Description · helper | "אפשר לכתוב מה אמרת, מה [שם] **עשה** ומה עשית בהמשך." | [UI] `DemoExperience.tsx` L345 | Yes (runtime-verified) |
| 2 | First Plan · Pre-Day · Runtime · support block (support level 2) | "…כרטיס תמונות ש[שם] **עובר** עליו. ההורה בקרבת מקום, לא ליד [שם]." | [Bank / Ladder] `schemas.ts` L420, `domainBuilders.ts` L94 | Yes, LH-B2-02 (runtime-verified) |
| 3 | Support block (support level 6) | "מבצע. [שם] **קרוב**. …" | [Bank / Ladder] `schemas.ts` L416 | No (no released target at this level) |
| 4 | Support block (support level 5) | "…מחזיק את החלק הקשה, [שם] **עושה** חלק מוגדר." | [Bank / Ladder] `schemas.ts` L417 | No |
| 5 | K2 completion after the measured part | "מחזיקים את החולצה פתוחה, ו[שם] **מכניס בעצמו** את הראש והידיים." | [Bank] `k2DressingB1.ts` L69 | K2 path, not runtime-verified by 06 |
| 6 | K2 evening setup | "…בגיל 4-5 [שם] **בוחר** מבין שניים בערב, לא בבוקר." | [Bank] `k2Builders.ts` L89 | K2 path, not runtime-verified by 06 |

## 3. Proposed wording

### #1 · Open Description helper · [UI] · CANDIDATE
- **Current:** אפשר לכתוב מה אמרת, מה [שם] עשה ומה עשית בהמשך.
- **Proposed (named):** אפשר לכתוב מה אמרת, מה ראית אצל [שם], ומה עשית בהמשך.
- **Proposed (no name):** אפשר לכתוב מה אמרת, מה ראית אצל הילד, ומה עשית בהמשך.
- **Why:** the child moves from subject to object, so there is no agreement. It reuses the wording of the locked Check-in question "מה ראית אצל הילד?". Same meaning: what the parent said, what the child did, what the parent did next. No new information.
- **Constitution check:** no §5 terms, no metaphor, spoken Hebrew.

### #2 · Support block, level 2 · [Bank] · CANDIDATE, needs Professional semantic check
- **Current:** לא מדבר. סימן אחד: אצבע על הפריט, טיימר שמופעל, כרטיס תמונות שהילד עובר עליו. ההורה בקרבת מקום, לא ליד הילד.
- **Proposal: no rewrite. Name omission at this position.**
  - `neutral` = the current sentence, unchanged, with generic "הילד" in both positions.
  - `named` = the same sentence with the name **only** in "לא ליד [שם]". "כרטיס תמונות שהילד עובר עליו" stays generic.
- **Why:** this is Ladder text (Bank-sourced). Rewording the agreement position would touch Professional wording. Keeping generic "הילד" there is grammatical, adds nothing and removes nothing.
- **Separate note, not part of RT-09:** this generic support block is on HOLD per Code Handoff. Its wording also breaks Voice interface rules (third-person "ההורה", a list of prompts that are not in the plan). That is a separate Voice item and is not proposed here.

### #3 · Support block, level 6 · [Bank] · CANDIDATE, Professional check
- **Current:** מבצע. הילד קרוב. ההורה אומר בקול מה הוא עושה, מילה או שתיים.
- **Proposal:** `neutral` and `named` both keep "הילד קרוב". There is no agreement-free position for the name in this sentence.
- **Status:** not reached in the released flow. Low priority.

### #4 · Support block, level 5 · [Bank] · CANDIDATE, Professional check
- **Current:** משתתף בתוך הביצוע. מחזיק את החלק הקשה, הילד עושה חלק מוגדר.
- **Proposal:** `neutral` and `named` both keep "הילד עושה חלק מוגדר". There is no agreement-free position.
- **Status:** not reached in the released flow. Low priority.

### #5 · K2 completion · [Bank] · CANDIDATE, Professional check
- **Current:** מחזיקים את החולצה פתוחה, והילד מכניס בעצמו את הראש והידיים.
- **Proposal:** give it the same template shape as the neighbouring K2 lines (`k2DressingB1.ts` L54–55, which already have `male` / `female`):
  - `neutral` = current text, unchanged (no name).
  - `male` = "…ו[שם] מכניס בעצמו את הראש והידיים."
  - `female` = "…ו[שם] מכניסה בעצמה את הראש והידיים."
  - **No `named` variant.** With a name but no form, `neutral` is used.
- **Why:** this is the existing approved K2 pattern. No new wording; only the gendered forms that K2 already uses elsewhere.

### #6 · K2 evening setup · [Bank] · CANDIDATE, Professional check
- **Current:** הבגדים נבחרו בערב והונחו על הכיסא הקבוע… בגיל 4-5 הילד בוחר מבין שניים בערב, לא בבוקר.
- **Proposal:** same template shape as #5.
  - `neutral` = current, unchanged.
  - `male` = "…בגיל 4-5 [שם] בוחר…"
  - `female` = "…בגיל 4-5 [שם] בוחרת…"
  - No `named` variant.
- **Note:** the sentence states an age-band rule ("בגיל 4-5"), not a fact about this child. Keeping generic "הילד" may be the more accurate reading even when the form is known. **Ambiguity:** the template variants vs generic only. This is for Voice and Professional to decide.

## 4. What this proposal does not do

- It does not collect grammatical form. The optional field "צורת פנייה" (PRODUCT_ENTRY_FLOW_v0_4 §6) stays inactive. With the form missing, every proposal above renders neutral Hebrew.
- It does not change locked strings. The K2 fixture, the Check-in locks and Entry are untouched.
- It does not change cue words, waits, escalation or completion actions.
- It does not change rendering code. *How* a string is excluded from name substitution is a Code question after approval.

## 5. Approval needed

| Item | Approver |
|---|---|
| #1 | Voice (Dalia) |
| #2–#6 | Voice + Professional (semantic equality check), because they are Bank-sourced |
| Mechanism (template vs exclusion rule) | Product → Code, after the wording is approved |
