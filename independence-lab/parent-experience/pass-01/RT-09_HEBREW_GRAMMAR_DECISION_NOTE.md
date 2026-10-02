# RT-09_HEBREW_GRAMMAR_DECISION_NOTE

**Status:** DRAFT decision note. NOT SoT. 06 recommends no option; Product / Voice decide.
**Finding:** RT-09, confirmed at runtime on `4499671` (PRODUCTION VISUAL REFERENCE `390/A07`, `390/A09`).
**Boundary:**
- No code or copy change.
- No new personal data is proposed.
- Collecting grammatical gender is **not** assumed to be the solution.

---

## 1. What happens

The parent enters the child's name (here "נועה"). The app then shows sentences whose verbs agree with a masculine subject:

| Screen | Rendered | Source of the sentence |
|---|---|---|
| Open Description helper | "אפשר לכתוב מה אמרת, מה נועה **עשה** ומה עשית בהמשך." | UI string hard-coded with the name in masculine agreement (`DemoExperience.tsx` L345) |
| First Plan · Pre-Day · Runtime support block | "…כרטיס תמונות שנועה **עובר** עליו. ההורה בקרבת מקום, לא ליד נועה." | Engine / Ladder text written with generic "הילד"; the name is substituted for "הילד" (`identity.ts` `renderIdentityText`) |

## 2. Mechanism (source-inspected)

1. Many source sentences use **"הילד" as a generic subject**, in masculine agreement. With "הילד" the Hebrew is correct.
2. `renderIdentityText` replaces "הילד" with the child's name whenever a name exists. It changes the noun but not the verb agreement.
3. Agreement is corrected only when `grammaticalForm` is set, and only for a fixed list of slash forms ("מגיע/ה", "קם/ה" …). Child setup does not collect `grammaticalForm`, so nothing is corrected.
4. Locked Check-in strings ("מה ראית אצל הילד?", the G2a labels, the non-evidence statement) are **not** passed through name substitution. They keep "הילד" and are grammatical (verified at runtime).

**Result:** the error appears only where a name is substituted into a sentence with gendered agreement.

## 3. Controlling source

PRODUCT_ENTRY_FLOW_v0_4 §6, Child Setup ("WORKING — BUILD-READY"):

> **Optional:** שם פרטי או כינוי · **צורת פנייה, רק אם נדרשת ל־rendering** · parent relationship, רק אם נדרש ל־rendering
> **כל projection להורה משתמש רק בזהות שנמסרה. אם שדה זהות חסר, משתמשים בעברית ניטרלית.**

Supporting sources:
- Contract v0.10 (repo copy) §continuity lists `grammaticalForm` as a persisted rendering identity field.
- INTAKE_SCHEMA_v0_5 lists "grammatical form" under *Optional*.

**Reading:** when the name is given and the form is missing, the source requires neutral Hebrew. Runtime shows masculine agreement. That is a gap between implementation and source. **This makes RT-09 an implementation-fidelity issue against an existing Product rule, not only a copy question.**

## 4. Approaches compatible with Product / Voice

Listed for decision. 06 does not choose.

| # | Approach | What changes for the parent | Data impact | Source support | Cost / risk |
|---|---|---|---|---|---|
| A | **Keep "הילד" where the sentence carries gendered agreement.** Use the name only in agreement-free positions (context strip, headings without a verb, object positions where the verb belongs to the parent) | Some sentences say "הילד" even though a name was given | None | Matches "עברית ניטרלית" when the form is missing. Keeps the Ladder / Bank wording unchanged | Needs a per-string rule for where the name may appear. Feels less personal |
| B | **Rewrite affected sentences so no verb agrees with the child as subject** (the agreeing verb belongs to the parent, or the sentence is impersonal). Wording is Voice's; 06 gives no example string | The name stays; the sentence avoids child-subject verbs | None | Voice-owned rephrasing | Ladder / Bank text is Professional content. Rephrasing it needs Professional review, so this cannot be a UI-only change. The hard-coded helper (L345) can be rephrased by Voice alone |
| C | **Use the existing slash-form mechanism** ("עובר/ת") when the form is unknown | Grammatical but heavier to read ("עובר/ת") | None | `identity.ts` already defines slash forms as the neutral case | Readability under stress. Only covers verbs that already have slash forms. Every affected source string would need slash forms |
| D | **Activate the already-approved optional field "צורת פנייה"** in Child Setup, only for rendering | The parent may choose a form; correct agreement when chosen | Collects an optional field that PRODUCT_ENTRY_FLOW_v0_4 §6 already lists as approved-optional; the contract already persists it | Existing source (§6) | Still needs a neutral path when the parent skips it (A, B or C). Product must confirm activation; it is not new data, but it is not collected today |
| E | **Stop substituting the name into Professional sentences** (Ladder / Bank text), and keep it only in UI-owned strings that Voice can phrase neutrally | Professional sentences say "הילד"; UI lines may use the name | None | Contract: the UI "may not generate missing copy"; identity substitution is presentation | Changes current name-personalisation behaviour across First Plan, Pre-Day and Runtime |

**Not proposed:** inferring gender from the name; any new data field beyond what PRODUCT_ENTRY_FLOW_v0_4 §6 already lists.

## 5. Decision needed

| Decision | Owner |
|---|---|
| Which approach (or combination) satisfies "עברית ניטרלית" when the form is missing | PRODUCT + VOICE |
| Whether "צורת פנייה" should be collected now (D) | PRODUCT |
| Whether Ladder / Bank sentences may be rephrased (B) | PROFESSIONAL |

**Implementation ready:** NO, until an approach is chosen.
