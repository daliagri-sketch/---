# CLAUDE.md

**מעבדת העצמאות · THIS IS US · super-this-is-us**
קובץ הפעלה לסוכן קוד | נגזר מ־`PROJECT_BIBLE_v0_1.md` (8.9.2026) ומ־`REBASE_REOPEN_NOTE_v1_1_D021.md` (5.9.2026)
נוצר: 17.9.2026 | סטטוס: `DRAFT` | תפקיד: **מפת הפעלה, לא Source of Truth**

---

## 0. כלל קדימות — קרא את זה לפני כל פעולה

```text
Active SoT  >  Implementation Contract  >  Project Bible  >  CLAUDE.md  >  code
```

אם קובץ זה סותר `00_ACTIVE_SOT/` — **קובץ זה טועה**.

אין להשתמש בקובץ הזה כדי להמציא, להשלים או "ליישב" כלל מקצועי שאינו קיים ב־SoT.
אין לקדם קוד למקור אמת. אין לתקן SoT בשקט.

> ⚠️ **אימות נדרש לפני עבודה:** תוכן הקובץ נגזר ממצב הפרויקט ב־8.9.2026.
> בתחילת סשן — ודא מול `PROJECT_BIBLE` ו־`00_DECISIONS/` שלא נוספו החלטות מאז.
> אם נוספו — ה־Bible גובר, וקובץ זה מתעדכן.

---

## 1. מה זה הפרויקט

שלושה מוצרים מאותו DNA: **לראות את הרצף מתחת לזירה, לזהות איפה הוא נשבר, ולהחזיר את הפעולה שבשליטת האדם.**

| מוצר | קהל | מצב |
|---|---|---|
| **מעבדת העצמאות** | הורים לילדים 3–10 (טווח עבודה נוכחי: 4–7) | מנוע slice הוכח; שלב App Shell Integration |
| **THIS IS US** | כל אדם, כל זירה | נבנה ונפרס; עבר rebase למוצר תרגול מתמשך |
| **super-this-is-us** | שכבת תשתית, X→Y בליבה | נבנה ונפרס |

**כל מוצר פועל לפי הכללים שלו. ייבוא ארכיטקטורה בין מוצרים דורש בדיקת תאימות מפורשת.**

---

## 2. Start-of-session checklist

לפני כל משימה, בסדר הזה:

1. קרא `PROJECT_BIBLE_v0_1.md` §17 (Current Phase), §18 (Current Task), §20 (Open Gaps).
2. קרא `00_DECISIONS/` — ודא שאין החלטה חדשה מאז 8.9.2026.
3. זהה באיזה מוצר אתה עובד. טען את כללי המוצר שלו בלבד.
4. זהה את שכבת העבודה: מקצוע / מנגנון / מוצר / שפה. אל תערבב.
5. אם המשימה נוגעת ב־`Do Not Reopen` (§9 כאן) — עצור ושאל.
6. אל תפתח scope. **משימה אחת בכל פעם.**

---

# חלק א׳ — מעבדת העצמאות

## 3. Product Identity — LOCKED

**מטרה:** לעזור להורים לזהות איפה הילד נתקע, להבין מה עדיין חסר לו, וללמד אותו את הצעד הבא לעצמאות בתוך חיי היום־יום.

- **משתמש ישיר:** ההורה.
- **הילד:** מושא ההבנה וההתערבות; **אינו** המשתמש הישיר.
- **ההורה:** סוכן השינוי. יחידת ההתערבות.
- **עצמאות הילד:** יחידת התוצאה.

### משפט העוגן

> **הילד עולה מדרגה בעצמאות — ההורה יורד מדרגה בעזרה.**

זהו עיקרון מקצועי ומבחן מוצר, לא ניסוח שיווקי.

### מבחן ההתערבות

> האם הילד מסוגל לבצע יותר בעצמו לאורך זמן, עם פחות עזרה מההורה?

### מה המוצר אינו

- אינו כלי אבחוני · אינו טיפול · אינו תחליף לאיש מקצוע
- אינו chatbot פתוח · אינו מערכת compliance
- אינו אוסף טיפים נפרדים לילד / להורה / לסביבה
- **אינו ה־legacy app.** האפליקציה הישנה: `LEGACY PROTOTYPE — DO NOT DEVELOP`
- AI הוא אמצעי בתוך הארכיטקטורה, לא זהות המוצר

---

## 4. 17 עקרונות נעולים

אינם נפתחים בלי `SOT_CONFLICT` אמיתי או החלטה מקצועית מפורשת:

1. שלושה צירים: **ילד / הורה / סביבה**
2. **יכולת לפני התנגדות**
3. סדר בדיקה: `יודע מה → יודע איך → מצליח לבצע → אם לא, איפה נתקע`
4. המערכת ממפה קושי תפקודי; **אינה מאבחנת**
5. ארבעה דפוסי הורה בלבד: `הלופ` · `מ־0 ל־100` · `הוויתור השקט` · `רק הפעם`
6. הדפוסים אינם אישיות ואינם מנוע נפרד; הם **משתנה בתוך** מנגנון ההתערבות
7. **יעד עצמאות אחד בכל פעם**
8. **Progress אינו completion.** Progress = ביצוע הילד + רמת העזרה + יציבות + יכולת להפחית תמיכה
9. **Keep / Adjust / Fade** הם מנגנון הלמידה
10. **Open input + closed engine**
11. `unknown` הוא ערך חוקי; אין להשלים אותו בניחוש
12. AI אינו ממציא intervention חסר
13. **Safety גובר על Intervention Logic**
14. המנוע מחזיר **פעולה אחת משולבת**, לא שלושה טיפים
15. הבוקר הוא ה־working beachhead; גילאי **4–7** הם טווח העבודה
16. העבודה המקצועית קודמת ל־UX ולקוד מלא
17. אין להתאים את המודל המקצועי לקוד legacy

---

## 5. Engine Model — LOCKED

### השרשרת הקנונית

```text
Capability → Environment → Decision → Target → Intervention → Observation → Keep/Adjust/Fade
```

### ברמת החוזה

```text
Inputs → Decision → Intervention → Support Level → Observation → Next Decision
```

### שלושת זמני המוצר

| זמן | מה קורה |
|---|---|
| **Planning** | לפני הסיטואציה: יעד, יכולת, תקיעות, סביבה, דפוס הורה, קיבולת, רמת עזרה, התערבות, success signal |
| **Runtime** | בזמן אמת: האם אפשר לבצע את התכנית. Safety/overload/freeze/קושי חריג → fallback או עצירה |
| **Learning** | אחרי ניסיונות: Observations → Keep / Adjust / Fade |

המנוע **אינו משוחח** כדי להגיע להחלטה. קלט מובנה → gates סגורים → החלטה קנונית.

---

## 6. Decision System — LOCKED

### Decision enum — שישה ערכים בלבד

```text
PROCEED
ENVIRONMENT_FIRST
CAPABILITY_PROBE
KEEP_SUPPORT
RUNTIME_FALLBACK
STOP
```

אין `LEARNING_TARGET` כ־decision. אין `safety_hold` כ־decision.
**אין להוסיף enum שביעי בלי שינוי SoT מפורש.**

### סדר ההחלטה הקנוני

```text
1   Safety / Runtime
2   Conditions
3   Capability
3a  Environment-contaminated Capability
4   Environment
5   Starting Level
6   Bottleneck
7   Parent Pattern
8   Parent Capacity
9   Select Intervention
10  Target Level
11  Success Signal
```

**Stopping at first decision:** עוברים לפי הסדר ועוצרים בשלב הראשון שמחזיר החלטה.
אין להריץ את כל השכבות במקביל ואז "לשקלל".

### Decision לעומת reason

`decision` = אחד מששת הערכים הסגורים. `reason` מסביר ואינו מרחיב את ה־enum.

```text
KEEP_SUPPORT(reason=safety_hold)
KEEP_SUPPORT(reason=parent_capacity)
KEEP_SUPPORT(reason=constrained_conditions)
Progress KEEP reasons: insufficient_evidence | mixed
```

Progress reasons אינם Decision reasons כלליים, ולהפך.

---

## 7. Child Support Ladder — WORKING, CORE MECHANISM

מודד כמה ההורה עוזר **ברגע הביצוע של משימה אחת**.

| Level | תיאור | תפקיד |
|---|---|---|
| 6 | full takeover / השלמה מלאה | entry / fallback — **לא** practice rung |
| 5 | עושים יחד | Learning |
| 4 | מראים | Learning |
| 3 | אומרים פעם אחת | Practice |
| 2 | מסמנים / environmental prompt | Practice |
| 1 | לבד | Practice |

### כללים תפעוליים

- **Learning = 5–4** · **Practice = 3–1**
- Level 6 = נקודת כניסה / fallback, לא מדרגת שהייה
- מעבר כללי = **מדרגה אחת בכל פעם**
- הגבול הקריטי: **3→2** — מעבר מהקול של ההורה לסימן חיצוני
- Progress קובע אם אפשר Fade; הסולם עצמו אינו קובע stability

### Setup vs Prompt

> **Setup** משנה את תנאי המשימה כך שהילד יכול לבצע.
> **Prompt** מסמן או מכוון את פעולת הילד בזמן הביצוע.

Setup אינו נספר אוטומטית כעזרה ואינו חייב להיעלם ב־Level 1. Prompt כן נספר כעזרה.
**המבחן הוא הפונקציה, לא עצם קיומו של החפץ או הסימן.**

---

## 8. Capability Rules — WORKING (יציב)

Capability = מה הילד יודע ויודע לעשות במשימה אחת, **בנפרד** ממה שקרה היום.

```text
KNOWS_WHAT → KNOWS_HOW → EXECUTES → PROMPT_NEEDED → BREAKDOWN → CONDITIONS
→ STARTING_SUPPORT_LEVEL
```

### Evidence minimums

- **Skill** יכול להיות מוכח בתצפית קונקרטית אחת.
- **`PROMPT_NEEDED`** דורש: **2 תצפיות תקפות ספציפיות** מאותו prompt בתנאים רגילים, **או** **Capability Probe אחד** מבוקר.
- דיווח כללי ("תמיד", "בדרך כלל", "כבר שבועיים") **אינו תצפית**.
- אין להשתמש בספי Progress כדי לפתור Capability.

### Capability Probe

- חי ב־**Planning**. אינו Intake, אינו Target Attempt, אינו Progress attempt.
- נרשם כ־evidence:
  ```text
  attempt_kind   = evidence
  evidence_type  = capability_probe
  target_ref     = null
  ```
- אינו נכנס ל־Progress. פרוב אחד יכול לפתור `PROMPT_NEEDED`.
- **אין לבצע פרוב שני על אותו datum אוטומטית.**

### Learning path מול Practice path

- **Learning path:** חוסר ידע/מיומנות קובע Starting 4/5/6; `PROMPT_NEEDED` אינו gating field.
- **Practice path:** `KNOWS_WHAT=yes` ו־`KNOWS_HOW=yes`; Starting 1–4 נגזר מ־`PROMPT_NEEDED`, ולכן חייב להיות resolved.

אם Capability unknown בגלל תצפית מזוהמת סביבתית → **`ENVIRONMENT_FIRST`**, לא `CAPABILITY_PROBE`.

---

## 9. Exact-age Logic — LOCKED

### source_band(age)

```text
4 → 3–4     5 → 5–6     6 → 5–6     7 → 7–8
```

### product_band(age)

```text
4 → 4–5     5 → 4–5     6 → 6–7     7 → 6–7
```

### כלל יסוד: Exact-age evidence precedence

- Developmental evidence נשלף לפי `child_age → source_band`
- `product_band` משמש ל־product/template defaults ול־`age_applicability`
- **product band אינו evidence band**
- אין conversion בין source band ל־product band. **אין מיצוע בין bands.**
- Constraints של "never demand" גוברים על Truth Bank במקרה conflict

### Default floors — Morning Slice

| Task | age 4 | age 5 | age 6 | age 7 |
|---|---:|---:|---:|---:|
| dressing | 3 | 2 | 1 | 1 |
| teeth | 4 | 2 | 2 | 1 |
| bag_items | `UNKNOWN` → temporary floor 4 | 2 | 2 | 1 |
| leaving_home | 3 | 2 | 2 | 2 |

- ערכים מסוימים הם `WORKING DEFAULT` / `ASSUMPTION` — הטבלה **אינה** הופכת אותם ל־`EVIDENCE`
- `UNKNOWN` הוא מצב חוקי. ב־bag_items גיל 4 אין Fade מתחת ל־floor הזמני בלי review או observed capability
- Target מתחת ל־default floor אפשרי רק כשיש יכולת נצפית מפורשת של הילד הספציפי

---

## 10. Bottlenecks & Environment — WORKING

### Bottlenecks קנוניים

```text
B1  initiation
B2  transition
B3  sequencing
B4  distraction
B6  early termination
```

**`B5` הוסר ואסור להחזיר אותו.**

### Environment routes

```text
E1  item inaccessible / no fixed place
E2  open choice
E3  task unit too large
E4  distractor
E5  start/end cue unclear
```

**Environment הוא route, לא bottleneck.**

```text
Environment mismatch → fix one setup issue first → observe again
→ only then resolve Capability/Bottleneck if needed
```

Template קיים בבנק **אינו עוקף** `ENVIRONMENT_FIRST`.

Bottleneck הוא **hypothesis תפקודית**, לא אבחנה. אין סימן מבדיל מספיק → `unknown` + שאלת תצפית אחת.

---

## 11. Independence Target — LOCKED

> **יעד עצמאות הוא אחריות אחת שעוברת מההורה לילד, במשימת בוקר אחת, במדרגה אחת בסולם העזרה.**

Target כולל לפחות: Action · Context · Starting Support Level · Target Support Level · Practice Window · Success Signal

### כללים

```text
Target = Starting - 1
```

- **delta 0 אסור.** Target חייב להיות נמוך מ־Starting
- יעד פעיל אחד לילד
- יעד = אחריות אחת; לא "לשפר את הבוקר"
- Success Signal = observable של ניסיון אחד, **לא** stability rule

### KEEP_SUPPORT

לעולם אינו יוצר Target. לעולם אינו משנה `target_level`.

יש active Target → נשמר. אין active Target →

```text
holding_state
target_ref   = null
target_level = null
no target attempt
no Progress
```

### FADE

FADE **סוגר** Target. FADE **לא פותח אוטומטית** את הבא.
לאחר סגירה — Planning בודק מחדש capability / bottleneck / conditions / readiness to fade, ורק אז מציע את הצעד הבא.

---

## 12. Observation & Progress — WORKING

### Target Attempt

ניסיון על Target פעיל, עם `target_ref`, שבו הילד קיבל הזדמנות לבצע לפי התכנית.

### Evidence attempts (אינם Progress attempts)

```text
capability_probe
environment_check
bottleneck_observation
```

### attempt validity

> ניסיון יעד תקף אם הילד קיבל את **מלוא ההזדמנות המתוכננת** — setup + support level + wait window — לפני שהתמיכה השתנתה.

`attempt_validity` **נגזר**; אינו נאסף מההורה כעמדה.
רק **valid target attempts** נכנסים ל־Progress. Constrained / runtime fallback / evidence attempts שקופים ל־Progress.

### at-target

```text
actual_support_level <= target_level  AND  success_signal_met = yes
```

Completion עם יותר עזרה מה־Target הוא **off-target**.

### Keep / Adjust / Fade

- **KEEP** — אותו יעד, אותה תמיכה, אותה התערבות
- **ADJUST** — Planning נפתח מחדש עם reason; Progress אינו בוחר לבד את השינוי
- **FADE** — הילד יציב במדרגת היעד; היעד נסגר, והבא אינו נפתח אוטומטית

### Stability thresholds — WORKING ASSUMPTION (לא evidence)

| Parameter | Value | Status |
|---|---:|---|
| Progress window | 4 valid target attempts | WORKING ASSUMPTION |
| Minimum before non-KEEP | 4 valid attempts | WORKING ASSUMPTION |
| FADE | ≥3/4 at-target + latest valid at-target | WORKING ASSUMPTION |
| ADJUST | ≥3/4 off-target + latest valid off-target | WORKING ASSUMPTION |
| parent execution block | ≥3/4 recent attempts invalid(parent_unmeasurable) | WORKING ASSUMPTION |
| staleness reset | >14 calendar days without valid attempt | WORKING ASSUMPTION |

### parent_execution_block

Adjust reason נפרד. אומר שאין מספיק הזדמנויות מדידות בגלל ביצוע התכנית על ידי ההורה.
**אינו אומר דבר על יכולת הילד** ואינו מעלה אוטומטית את מדרגת הילד.

### שפת המדידה — LOCKED

המדידה מתארת את **רמת העזרה שנדרשה**, לא את הילד ולא "הצלחתו" כאדם.

| ✅ תקין | ❌ לא תקין |
|---|---|
| "היום נדרשו שני רמזים במקום שלושה." | "הילד נכשל." |

חל גם על UI, Reflection, Progress summaries ו־implementation copy.

### Progress אינו

score · אחוז עצמאות · streak קלנדרי · completion count · ציון להורה או לילד

---

## 13. Safety — LOCKED CORE

> **Safety overrides Intervention Logic.**

כאשר Safety מחזירה replacement/stop — **אין להמשיך ל־Intervention renderer "בינתיים".**

### Mapping תפעולי

| Safety state / mode | Decision |
|---|---|
| CHILD_OVERRIDE_CRITICAL | `STOP` |
| HUMAN_ESCALATION | `STOP` |
| CHILD_OVERRIDE_1 | `STOP` |
| SESSION_TERMINATION | `STOP` |
| SOS_SOMATIC_ONLY | `RUNTIME_FALLBACK` |
| SILENCE / child freeze | `RUNTIME_FALLBACK` |
| STATIC_FALLBACK בזמן ניסיון | `RUNTIME_FALLBACK` |
| R5B, אחרי ניסיון | `KEEP_SUPPORT(safety_hold)` |
| STATIC_FALLBACK מחוץ לניסיון | `KEEP_SUPPORT(safety_hold)` |

`safety_hold` = **reason** של KEEP_SUPPORT, לא decision חדש.

### Guardrails

- אין אבחון ADHD / ASD או הפרעה אחרת
- אין לפרש כל קושי כהתנגדות
- אין להתעקש דרך כאב, פחד, sensory difficulty משמעותי, freeze או overload
- חסר מידע → `unknown` עדיף על ניחוש
- כשנדרש — עוצרים / מפנים לאיש מקצוע / human escalation
- Safety גובר על Target, Progress, UX, AI generation וכל החלטת Intervention

מקור מלא: `SAFETY_GATE_MASTER_SPEC_v1_0.docx` (LOCKED). **קובץ זה אינו משכתב Safety policy.**

---

## 14. AI Architecture — LOCKED BOUNDARY

```text
Extraction → Classification → Decision → Generation
```

| שכבה | מה מותר ל־LLM |
|---|---|
| **Extraction** | למפות שפה טבעית לשדות קנוניים |
| **Classification** | להציע ערך מתוך **רשימה סגורה** + confidence. הצעה אינה decision. `unknown` נשאר אפשרי |
| **Decision** | ככל האפשר — וב־Morning Slice **בפועל** — Rules / Decision Tables |
| **Generation** | רק **אחרי** שההחלטה התקבלה, בתוך constraints סגורים |

### LLM אינו מחליט

```text
Starting Support Level · Target Support Level · final Decision
final Bottleneck · attempt validity · KEEP/ADJUST/FADE
wait window · template selection · Safety replacement output
```

Rendered Output נוצר מ־Planning Instance resolved, **לא מהמצאה חופשית**.

### BANK_COVERAGE_GAP

אין intervention template מתאים → מחזירים `BANK_COVERAGE_GAP`. **ה־gap נשאר gap.**

אין: "תשאל את Claude" · "תן ל־AI להשלים" · fallback חופשי · invention מתוך frontend.

---

## 15. Source of Truth & Governance — LOCKED

### Filesystem

```text
00_ACTIVE_SOT/          professional truth הפעיל
10_WORKING/             implementation contracts, working engine, build artifacts
90_LEGACY/              היסטורי / superseded / prototype — אינו מקור אמת
99_DELETE_CANDIDATES/   מועמדים למחיקה — אין למחוק ללא החלטה מפורשת
```

- **Implementation Contract** מתרגם SoT לחוזה buildable; אינו Professional SoT
- **Project Bible / CLAUDE.md** = operating map; אינם Professional SoT
- **code** = implementation בלבד; אינו רשאי להפוך למקור אמת חדש

### Document statuses

```text
DRAFT · WORKING · LOCKED · SUPERSEDED · LEGACY
```

ברירת מחדל למסמך חדש: `DRAFT`.

### Evidence statuses

```text
EVIDENCE    מבוסס מקור מקצועי / מחקרי / קליני / מתועד
ASSUMPTION  סביר אך לא נבדק — אינו אמת
UNKNOWN     אין בסיס מספיק להכרעה
```

**Document status ≠ readiness status.** מסמך יכול להיות `DRAFT` ובמקביל `IMPLEMENTATION READINESS: READY`.

---

## 16. Canonical Active Files

### 00_DECISIONS
- `REBASE_REOPEN_NOTE_v1_1_D021.md` — D‑021, החלטות ה־Rebase

### 01_ENGINE
- `CHILD_SUPPORT_LADDER_v0_4.md`
- `CHILD_CAPABILITY_MODEL_v0_4.md`
- `MORNING_BOTTLENECKS_v0_3.md`
- `INDEPENDENCE_TARGET_v0_5.md`
- `MORNING_DECISION_INTERVENTION_MATRIX_v0_6.md`
- `OBSERVATION_SCHEMA_v0_5.md`
- `PROGRESS_KEEP_ADJUST_FADE_v0_2.md`

### 02_INTERVENTIONS
- `GAP_CLOSURE_LEAVING_HOME_4-5_B2_v0_2.md`
- `INTERVENTION_BANK_leaving_home_B2_v0_8.md` — `WORKING IMPLEMENTATION-READY`
  - **C2 resolved, 8.9.2026**
  - SHA‑256: `e0ee27f5a318d497db500f81bc4bd62ebceee305cbd69d398e2484c6602b6183`
  - `LH-B2-01/02` capability premise מיושר ל־Capability v0.4: **2 valid specific observations OR 1 Capability Probe**
  - **אין לחזור ל־pre-C2 variant**

### 03_FOUNDATIONS
- `DEVELOPMENT_TRUTH_BANK_v2_0.docx` — ⚠️ בפועל **קובץ טקסט Markdown עם סיומת `.docx`**. לתקן סיומת ב־Registry, **לא להמיר**
- `Developmental_Constraints_NEVER_Demand_v2_0.docx`
- `RUNTIME_LAWS_DOCUMENT_v1_0.docx` — הבית הקנוני של 15 חוקי ה־Runtime
- `SAFETY_GATE_MASTER_SPEC_v1_0.docx`
- `SOS_12_Nodes_Bank_v1_0.md`

### 10_WORKING
- `IMPLEMENTATION_CONTRACT_MORNING_VERTICAL_SLICE_v0_1.md`
  - document status: `DRAFT` | implementation readiness: `READY` — **אלה אינם conflict**

### מסמכים חסרים / לא אותרו (לא חוסמים את ה־Slice)
`Scaffolding_Map v1.1` (NOT FOUND) · `Canonical_Vocabulary v1.0` · `Runtime_State_Model v1.2` · `Failure_Handling_Doctrine v1.0` · `Content_Bank_Master_Schema v1.0` · `Language_Engine v2.1` (⚠️ Index מפנה ל־v2.1; בפרויקט קיים `LANGUAGE_SYSTEM_DOCUMENT_v1_0` — הכרעה פתוחה) · `INTAKE_DATA_MAPPING v1.0` · `MEMORY_SYSTEM_DOCUMENT v1.0`

---

## 17. Vertical Slice — Current Build State

### Scope

```text
morning → leaving_home → B2
```

### Location

```text
10_WORKING/slice_engine/
```

### Properties

```text
deterministic · rule-based · Python stdlib-only
structured input in → canonical structured output out
no LLM · no NLP · no UI · no database · no free-form intervention generation
```

### Modules

```text
sot_constants.py   models.py      capability.py   environment.py
safety.py          bank.py        target.py       observation.py
progress.py        engine.py      fixtures.py     runner.py
test_slice.py      README.md
```

### Proven flow

```text
structured input → deterministic decision → canonical target
→ Bank intervention → Observation → Keep/Adjust/Fade
```

### Last verified build status

```text
25/25 tests PASS
16/16 invariants PASS
T1–T8 PASS
SOT_CONFLICT: none
```

ה־fixture set כולל contaminated-capability case (`T4b`) ככיסוי step 3a.

### Known BANK_COVERAGE_GAP — expected, not failure

- `leaving_home`, age 4, `3→2` — no default template; professional gap remains
- כל task/bottleneck שאינו `leaving_home / B2` — out of current slice scope
- Matrix rows שתבניות ההתערבות שלהן טרם נכתבו נשארות Bank coverage gaps מפורשים. **אין free generation.**

---

## 18. App Integration Boundary — CURRENT HYPOTHESIS

```text
app_shell → transport boundary → slice_engine
```

| רכיב | תפקיד |
|---|---|
| `slice_engine` | **היחיד** שמותר לו לקבל החלטה מקצועית |
| `frontend / app_shell` | מציג, אוסף input, מנהל flow, loading/errors, rendering. **אינו מחשב החלטה** |

```python
# ✅ מותר ב-frontend
if decision == KEEP_SUPPORT:
    render_keep_screen()

# ❌ אסור ב-frontend
if parent_capacity == hard:
    decision = KEEP_SUPPORT
```

### לא מאושר כרגע

```text
FastAPI · two-service deployment · Vercel Services architecture
יצירת 10_WORKING/slice_api/
```

`slice_api / FastAPI` = **implementation hypothesis בלבד.** הצורך נקבע רק אחרי Template Inspection.

### Supabase / AI Gateway — לא במסלול הקריטי

- אין provision ל־Supabase לפני צורך מוכח ב־persistence
- AI Gateway אינו Decision engine
- **אין LLM fallback ל־Bank gap**

---

## 19. Current Phase / Gate / Task

```text
PRODUCT REBASE:  CLOSED ENOUGH TO BUILD
CURRENT PHASE:   SAFE APP SHELL INTEGRATION
CURRENT GATE:    TEMPLATE INSPECTION
```

**לא חוזרים ל־Product Discovery. לא פותחים את המודל מחדש.**
בודקים כיצד לחבר מעטפת מוצר למנוע שכבר הוכח.

### המשימה היחידה: Template Inspection

מטרת ה־inspection:

- להריץ את installer של Game Changer Template **בסביבה זמנית ונפרדת**
- לתעד file/folder manifest
- לזהות package manager · dependencies
- לזהות האם Supabase / AI Gateway חובה או optional
- לזהות server/API structure קיים
- לזהות `.env` requirements · postinstall scripts
- לזהות האם נוצר `.git`
- לזהות assumptions לגבי deployment
- לבדוק אם installer משנה משהו מחוץ לתיקייה שלו

### לפני סיום ה־inspection — אסור

```text
לא להתקין בפרויקט הקיים
לא ליצור 10_WORKING/app_shell/
לא ליצור 10_WORKING/slice_api/
לא להתקין FastAPI
לא להחליט על two-service deployment
לא ליצור Vercel Services
לא להפעיל Supabase
לא להפעיל AI Gateway כ-runtime dependency
לא לשנות slice_engine
לא לשכתב את המנוע כדי להתאים לטמפלייט
```

### רק אחרי inspection מחליטים

```text
USE_FASTAPI_NOW  |  DELAY_FASTAPI  |  NO_FASTAPI_NEEDED_FOR_FIRST_SLICE
```

---

## 20. Do Not Reopen — CLOSED

אין לפתוח בלי `SOT_CONFLICT` אמיתי או סיבה מקצועית מהותית:

Rebase Audit · Support Ladder · Capability · Morning Bottlenecks · Independence Target · Observation Schema · Progress · Morning Decision/Intervention Matrix · Safety core

- **IG‑02** — KEEP_SUPPORT / holding / delta‑0
- **PG‑01** — Capability evidence minimums
- **IG‑08** — exact-age precedence
- **IG‑01** — Safety → Decision mapping
- **SC‑01** — LH-B2-02 coverage ages 5–7
- **C2** — Bank prompt premise alignment; resolved in corrected Bank v0.8

> "לא לפתוח מחדש" אינו אומר שהמסמכים LOCKED בהכרח — הוא אומר שאין להפוך אותם למשימה נוכחית בלי conflict אמיתי.

---

## 21. Open Gaps

### BLOCKING

**אין Professional / SoT blocker פתוח** ל־Morning `leaving_home/B2` slice.
`CURRENT GATE: TEMPLATE INSPECTION` הוא process gate של App Integration, **לא** `SOT_CONFLICT`.

### NONBLOCKING — Professional

| ID | Gap |
|---|---|
| PG‑02 | כמה תצפיות לפני Bottleneck hypothesis |
| PG‑03 | `leaving_home`, age 4, `3→2` |
| PG‑04 | `leaving_home`, age 7 / support level 1 |
| PG‑06 | below-target וקיצור window עתידי |
| PG‑07 | prompt שדעך ל־setup |

### NONBLOCKING — Implementation

| ID | Gap |
|---|---|
| IG‑03 | LH-B2-01 traceability מול Matrix row |
| IG‑04 | Bank coverage gaps מחוץ לתבניות הקיימות |
| IG‑05 | אין FADE reason enum; `reason=null` הוא המצב הנוכחי |
| IG‑06 | `adjust_count` persistence semantics |
| IG‑07 | `route_to_system_support` אינו מוגדר במלואו |

### NONBLOCKING — Data

| ID | Gap |
|---|---|
| DG‑01 | Intake SoT מלא עדיין חסר |
| DG‑02 | reliability של parent-reported `actual_support_level` |
| DG‑03 | full runtime state detection model אינו חלק מה־slice package |
| DG‑04 | `wait_window=60s` הוא working default ללא מקור מקצועי ישיר |

### RESOLVED / CLEANUP DEBT

**PG‑05** — B6 מול `quality_execution`: **resolved at rule level.**
`MORNING_DECISION_INTERVENTION_MATRIX v0.6 §8` משאיר B6 כ־bottleneck קנוני עם decision rule המבוסס על מבחן הערב.
נותר **cleanup/traceability debt בלבד**: `MORNING_BOTTLENECKS v0.3 §8 Q2` עדיין נושא את שאלת המיזוג, וה־Implementation Contract עדיין מציג PG‑05 ברשימת gaps.
**אין לפתוח את ההכרעה מחדש** — לסנכרן סימונים ב־SoT/Contract cleanup.

### Working assumptions (לא evidence)

Progress thresholds · 60s wait window · transition_unit allowed list · stoppable-activity list · exact-age floors המסומנים כ־WORKING DEFAULT

### FUTURE — לא משימה כרגע

full Learning Layer · full Recovery System · Partner Sync · Memory architecture מלאה · dashboard · GTM · pricing · retention · personalization רחבה · all ages 3–10 · כל תחומי ההורות · persistence production architecture · analytics-driven learning · app-wide AI runtime · הרחבת Bank לכל המשימות וה־bottlenecks

---

## 22. Conflict Protocol — LOCKED

```text
1. identify exact files
2. verify canonical versions
3. quote exact conflicting rule
4. classify TRUE_CONFLICT / NOT_A_CONFLICT
5. do not resolve in code
6. route professional conflict to professional review
7. sync affected SoT
8. rerun implementation tests
```

- checksum נדרש כשיש חשש ל־variant ישן או duplicate
- **לא מסיקים מתוך code מה "בטח התכוון" המסמך**
- **לא מתקנים SoT בשקט**
- code mismatch = implementation issue; אינו משנה את ה־SoT
- `SOT_CONFLICT` מקצועי אמיתי שחוסם החלטה → **עוצרים** לפני יצירת מסמך־על או implementation חדש
- לאחר resolution: מעדכנים את כל המסמכים המושפעים, ואז regression tests

---

## 23. 22 כללי עבודה לסוכן — LOCKED

1. **משימה אחת בכל פעם**
2. אל תרחיב Scope בלי dependency אמיתי
3. לפני יצירת מסמך חדש — בדוק אם כבר קיים חומר רלוונטי
4. אל תיישב סתירות בשקט
5. אל תציג `ASSUMPTION` כאמת
6. `UNKNOWN` הוא תוצאה חוקית
7. אל תפתור בעיית מקצוע בקופי
8. אל תפתור Decision Logic ב־AI חופשי
9. אל תאפשר ל־frontend להיות second decision engine
10. אל תאפשר ל־API adapter להיות second decision engine
11. אל תשתמש ב־LLM כדי להמציא intervention חסר
12. אל תשתמש ב־legacy code כ־Source of Truth
13. אל תבנה full system לפני שה־Vertical Slice עובד end-to-end
14. אל תכניס persistence לפני צורך אמיתי
15. אל תפתח Safety מחדש אם אין conflict
16. הורה/ילד במצב Safety → **Safety לפני Intervention**
17. Progress נמדד בירידת עזרה, לא רק completion
18. יעד אחד בכל פעם
19. פעולה אחת משולבת בכל intervention
20. לפני שינוי מקצועי: מה חזק → מה חלש → חלופות רק אם צריך → **המלצה אחת**
21. החלטה שלא נדרשת ל־MVP נדחית
22. יש gap אמיתי → שמור אותו כ־gap; אל תעלים אותו דרך generation

---

# חלק ב׳ — כללי שפה וקול

חלים על **כל** הטקסט שמגיע למשתמש: UI, microcopy, error messages, Progress summaries, Reflection.

## 24. עברית חיה

- משפטים שלמים בעברית מדוברת. לא ספרותית, לא טלגרפית, לא רובוטית
- **גוף שני תמיד**: את/ה, לך, שלך. לעולם לא "ההורה", "האדם", "המשתמש"
- שבירת שורות עושה את העבודה — כל מחשבה על שורה משלה. לא בלוקים, לא פסקאות כבדות
- אורך: לרוב 5–8 מילים. שונות קצב חובה — **אחידות חושפת מכונה**
- לא מסיימים בהשראה. עוצרים לפני העודף
- **כל פלט מוביל לפעולה קטנה. אין פעולה — אין פלט**

## 25. מה אסור

**ז'רגון קליני:** ויסות · הכלה · co-regulation · חלון סבילות · דיסרגולציה · טריגר · עיוות חשיבה · אסרטיביות · תיקוף · גבולות בריאים · העצמה · מרחב בטוח · healing · wellness
→ *אם מילה נשמעת כמו ספר פסיכולוגיה — היא נפסלת.*

**AI language:** מקפים ארוכים · "אני מבין שזה קשה" · "נשמע שזה מתיש" · "בואי נצלול" · "קחי נשימה" · "הכל אפשרי" · "ביחד נצליח"

**ניסוח שמאבחן:** "אצלך" · "ככה את/ה" — מתארים אישיות, לא רגע

**הסבר מוטיבציה:** "כדי ש..." — מסביר כוונה פנימית

**מדידת תוצאה:** "תראה/י מה זה עושה"

**חנופה ונירמול:** "כל הכבוד" · "זה טבעי" · "את/ה לא לבד" · "זה שכיח"

**שלילה ריקה:** כל "לא" חייב כיוון.
❌ "לא מסבירים." · ✅ "לא מסבירים. ממשיכים."

**פיוט ואווירה ספרותית:** "האוויר בחדר" · "הרעש במסדרון" · "הקול חתך"

**ציווי כשאפשר להראות:** "צריך" · "חייבים" · "כדאי"

## 26. מה מותר

- **פקודות גופניות:** "שב לידו." · "יד על הכתף." · "עמוד שם." · "נשיפה אחת."
- **תצפית עובדתית:** "הוא עדיין שם." · "הגוף שלו עוד שם." · "הוא לא זז."
- **Clarification:** "הוא לא X — הוא Y." עד 10 מילים. לא ז'רגון, לא פרשנות פסיכולוגית

## 27. שלושה מבחנים לפני כל פלט

| מבחן | קריטריון |
|---|---|
| **18:40** | אדם עייף פותח את המסך, שתי שניות, מבין מה לעשות. לא — מנסחים מחדש |
| **Continuity** | אפשר לסדר את השורות מחדש בלי לאבד משמעות → השכבות לא במקום. משכתבים |
| **Recognition** | האם האדם מרגיש "זה בדיוק אני". לא — לא הגענו |

## 28. PASS / FAIL

| ✅ PASS | ❌ FAIL |
|---|---|
| "אמרת. עכשיו גוף — לא קול." | "כל הכבוד שנשארת — זה לא קל." |
| "הוא עדיין שם." | "הוא בודק את הגבולות שלך." |
| "לא חוזרים. פה נסגר." | "תנסי להתאפק." |
| "נשיפה אחת. ניגשים." | "אני מבינה שזה מתיש." |
| "הוא לא מסרב — הגוף שלו עוד שם." | "מערכת העצבים שלו בעוררות." |
| "רצית X. יצא Y. זה לא כישלון — זה פער." | "זה טבעי לגמרי, כולנו שם." |

## 29. חוק מבנה לפני מילים

מסך מרגיש שטוח → **לא מוסיפים הסבר אוטומטית.** בודקים קודם:

- האם המבנה הוויזואלי נותן היררכיה?
- האם יש משפט מוביל אחד?
- האם יש intervention object?
- האם כל השורות באותו משקל?
- האם השבירות נכונות?
- האם הטקסט נראה כמו רשימה?

**רק אם המבנה נכון ועדיין חסר — מוסיפים מילים.**

## 30. דיוק לפני פשטות

אסור לתת פתרונות שמוחקים דיוק בשם פשטות.

❌ "רוב המשתמשות אמהות, אז נכתוב הכול בנקבה" — פתרון של מערכת, לא של המוצר.

✅ לנסח ניטרלי איפה שאפשר · לדייק מגדר איפה שחייבים · להפריד relationship layer מ־runtime layer · לצמצם נטיות במקום למחוק זהות

---

# חלק ג׳ — THIS IS US

> כללי המוצר הזה **נעולים בו**. אין ייבוא מ/אל מעבדת העצמאות בלי בדיקת תאימות מפורשת.

## 31. Stack

Next.js (App Router) · TypeScript · Tailwind · shadcn
חיבור AI דרך **Vercel AI Gateway** (קיים בטמפלייט)
אין דאטהבייס בשלב זה — state הוא in-memory בצד הלקוח. **אין localStorage.**

## 32. קבצי מקור

```text
patterns.json         ארבעת הדפוסים הנעולים
cards.json            ארבעה כרטיסים מאושרים לחיקוי
output_contract.md    חוזה ה-JSON שהמנוע מחזיר
loop.md               checkback ו-pattern memory
intake.md             שאלות הפתיחה והסדר
design.md             עיצוב, צבעים, טיפוגרפיה, מבנה מסך
SKILL.md              קול THIS IS US — נטען כשמייצרים טקסט
THIS_IS_US_Recognition_Engine_SystemPrompt_v1_2.md   ההוראה הראשית למנוע
```

## 33. Screens — מכונת מצבים אחת

```text
intro · intake · moment · recognizing · clarify · mirror
card · checkback · patternMemory · error (overlay)
```

```text
intro → intake → moment → recognizing
recognizing → clarify | mirror          (לפי status מהמנוע)
clarify → moment                        (צמצום, קריאה חוזרת)
mirror  → recognizing                   ("לא בדיוק", עם הקשר מתוקן)
mirror  → card                          (אישר)
card    → checkback                     (אחרי חלון זמן)
checkback → patternMemory | done        (patternMemory רק אם interactionCount >= N)
```

## 34. State

```ts
type Screen =
  | "intro" | "intake" | "moment" | "recognizing"
  | "clarify" | "mirror" | "card" | "checkback" | "patternMemory";

type PatternKey = "loop" | "just_this_once" | "quiet_withdrawal" | "0_to_100";
type LayerKey = "reality" | "mirror" | "move" | "hold" | "body" | "stop" | "motion";

interface Card {
  pattern: PatternKey;   // פנימי
  domain: string;        // פנימי
  x: string;             // פנימי
  y: string;             // פנימי
  layers: Record<LayerKey, string>;
}

interface Recognition {
  status: "clarify" | "mirror" | "card";
  pattern?: PatternKey;      // פנימי, לא מוצג
  mirrorText?: string;
  clarifyQuestion?: string;
  card?: Card;
}

interface CheckbackResponse {
  action: "held" | "partial" | "failed";
  prior: "body_rushed" | "forgot" | "reacted_fast" | "felt_artificial";
  at: number;
}

interface AppState {
  screen: Screen;
  intake: IntakeAnswers;
  momentText: string;
  recognition: Recognition | null;
  checkbacks: CheckbackResponse[];
  interactionCount: number;
  error: ErrorState | null;
}
```

**סדר השכבות נעול:** `reality → mirror → move → hold → body → stop → motion`. זהה ל־`cards.json`. שבירת שורה בתוך שכבה = `\n`.

**חוק מ־intake.md:** `intake` נשמר לתצוגה ולנימה בלבד. **אינו נשלח למנוע הזיהוי ואינו משפיע על קביעת הדפוס.** הדפוס נקבע מ־`momentText` בלבד.

## 35. כללים קריטיים לבנייה

- **שם הדפוס לעולם לא נשלח ל־UI.** `pattern` נשאר ב־state כלוגיקה; אף קומפוננטה לא מציגה אותו
- **מודדים פעולה, לא תוצאה.** `action_options` תמיד: החזקתי / חלקית / לא הצלחתי. **לעולם לא "עזר"**
- **קלט עמום מחזיר `clarify`, לא כרטיס.** אסור לנחש דפוס
- בלי מקפים ארוכים בשום טקסט שמגיע למשתמש
- כל טקסט עובר את שלושת מבחני הקול (§27) לפני שמוצג

## 36. Fallback & Error

| מצב | תגובה |
|---|---|
| קלט עמום / אין התאמה חדה | `status: clarify` + שאלת צמצום אחת → חזרה ל־moment. **לא כרטיס** |
| "לא בדיוק" במראה | לא להתעקש. קריאה חוזרת עם momentText + הבהרה. נכשל שוב → clarify |
| JSON לא תקין | ניסיון אחד חוזר. נכשל שוב → error רך |
| המנוע החזיר שם דפוס בשדה למשתמש | **לסנן לפני הצגה** |
| `interactionCount < N` | לדלג על patternMemory → done |
| moment ריק | לא לקרוא למנוע. הנחיה inline קצרה |
| כשל רשת / timeout >30s | ErrorBanner, כפתור נסה שוב, **שומר את momentText** |

כל הודעת error בקול THIS IS US: קצרה, בלי דרמה, בלי התנצלות ארוכה, בלי קוד שגיאה גולמי.

## 37. סדר בנייה

1. שלד מכונת המצבים + ניווט, עם נתונים קבועים מ־`cards.json`
2. כל המסכים על ארבעת הכרטיסים המאושרים, **בלי מנוע חי** — דמו עובד ← **היעד הראשון**
3. חיבור המנוע: moment → קריאה אמיתית → recognizing → mirror → card דינמי
4. fallback ו־error
5. הלולאה: checkback ו־pattern memory
6. ליטוש עיצוב לפי `design.md`

---

# חלק ד׳ — גבולות סמכות

## 38. מה סוכן הקוד מחליט לבד

- implementation details בתוך המודולים הקיימים
- refactoring שאינו משנה חוזה
- tests, fixtures, error handling
- תיקון bug שמפר invariant קיים
- דיווח על `SOT_CONFLICT`

## 39. מה חוזר לדליה (Product Lead) להכרעה

- **כל** שינוי ב־Decision enum, Ladder levels, thresholds, age bands
- הוספת/שינוי intervention template
- כל דבר ברשימת `Do Not Reopen` (§20)
- החלטת ארכיטקטורה: FastAPI / two-service / Supabase / deployment
- מה נכנס ל־MVP · מה נבנה קודם · UX/UI · business model · pricing · GTM
- כל טקסט שמגיע למשתמש לפני approval
- **כשממצא טכני משנה החלטת מוצר — לסמן מפורשות ולעצור**

## 40. איך לדווח

```text
FINDING:      מה נמצא
LOCATION:     קובץ + שורה
CLASSIFY:     TRUE_CONFLICT | NOT_A_CONFLICT | PRODUCT_DECISION
EVIDENCE:     ציטוט מדויק של הכלל הסותר
BLOCKS:       מה זה חוסם
RECOMMEND:    המלצה אחת (לא שלוש אפשרויות)
```

---

# Operating Snapshot

```text
PRODUCT:
מעבדת העצמאות

ANCHOR:
הילד עולה מדרגה בעצמאות — ההורה יורד מדרגה בעזרה.

PROFESSIONAL TRUTH:
00_ACTIVE_SOT/

IMPLEMENTATION CONTRACT:
10_WORKING/IMPLEMENTATION_CONTRACT_MORNING_VERTICAL_SLICE_v0_1.md
document status = DRAFT
implementation readiness = READY

CURRENT VERTICAL SLICE:
morning → leaving_home → B2

ENGINE:
10_WORKING/slice_engine/
deterministic / rules / stdlib-only

CURRENT PHASE:
SAFE APP SHELL INTEGRATION

CURRENT GATE:
TEMPLATE INSPECTION

CURRENT TASK:
Inspect Game Changer Template in a disposable environment only.

NEXT ALLOWED ACTION:
Template Inspection.

NEXT FORBIDDEN ACTION:
Install into project / create app_shell or slice_api / install FastAPI /
provision Supabase / decide deployment architecture / modify slice_engine.

SOT_CONFLICT:
none verified after C2 resolution (as of 8.9.2026)

CORRECTED BANK:
INTERVENTION_BANK_leaving_home_B2_v0_8.md
SHA-256 = e0ee27f5a318d497db500f81bc4bd62ebceee305cbd69d398e2484c6602b6183
C2 = RESOLVED
```

---

## Changelog

| Version / Date | Change |
|---|---|
| v1.0 · 17.9.2026 | קובץ ראשון. נגזר מ־PROJECT_BIBLE v0.1 (8.9.2026) + REBASE_REOPEN_NOTE v1.1/D‑021 (5.9.2026) + voice.md + THIS_IS_US_Technical_Spec_v1 |

## מה לא אומת בקובץ הזה

- מצב הפרויקט בין **8.9.2026 ל־17.9.2026** — לא ידוע. **לוודא מול `00_DECISIONS/` בתחילת סשן**
- האם Template Inspection בוצע מאז
- מצב עדכני של `super-this-is-us` — לא תועד מעבר לכך שנבנה ונפרס
- `Language_Engine v2.1` מול `LANGUAGE_SYSTEM_DOCUMENT v1.0` — הכרעת גרסה פתוחה
- D‑021 טרם נרשם ב־`Locked_Decision_Ledger` ו־`Master_SoT_Index` (נכון ל־6.9.2026) — **חובה לפני LOCK**

---

CLAUDE.md v1.0 | `DRAFT` | Operating map, not Professional SoT | 17.9.2026
