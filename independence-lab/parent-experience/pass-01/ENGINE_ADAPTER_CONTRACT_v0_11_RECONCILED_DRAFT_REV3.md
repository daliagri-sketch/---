# ENGINE_ADAPTER_CONTRACT v0.11 — RECONCILED DRAFT

**Status:** `DRAFT / NOT YET CANONICAL / NOT FOR IMPLEMENTATION`
**Draft revision:** REV3 · 03.10.2026 · FULL REV3 SYNCHRONIZATION (Main CT, after Huri audit "PASS WITH REQUIRED DOC FIXES"). REV1 accepted in principle; REV2 = practice_not_occurred sync, bank-version note, copy wording; REV3 = full body sync to released / canonical truth.
**DOCUMENT VERSION:** v0.11 · **WIRE `contractVersion`:** `"0.10"` (unchanged). ה-wire version `"0.10"` מכסה את ה-shapes המשוחררים שמתועדים כאן (`4499671`). אין bump ל-runtime. **Follow-up נפרד:** WIRE CONTRACT VERSIONING POLICY = GOVERNANCE / IMPLEMENTATION FOLLOW-UP.
**Released truth sources for the sync:** `MORNING_CONTRACT_PRODUCT_IMPLEMENTATION_PACKET_v0_2_REV3` (Drive `1jqsjgO11KGeJdlhdUHUeGI-TYikKhscw`; canonical per `RELEASE_RECORD_MORNING_2026-10-02_REV3`) · OBSERVATION_SCHEMA_v0_10 · PROGRESS_KEEP_ADJUST_FADE_v0_3_3 · MORNING_CHECKIN_FACT_SET_v0_2 · released code `4499671` (`src/application/engine/contract/schemas.ts`).
**Prepared by:** Parent Experience Control Tower (06) · 03.10.2026 · לבקשת Main Control Tower (GOVERNANCE RATIFICATION DECISION)
**Supersedes (after Main CT acceptance only):** `ENGINE_ADAPTER_CONTRACT_v0_10` — שני העותקים: Drive (`1YUivC5JjQNolvufnreSlijTcJD_jgPGa`, 130,586 B, sha256 `bf23c78e…`) ו-repo (`docs/…/ENGINE_ADAPTER_CONTRACT_v0_10.md`, 137,950 B, sha256 `a42c7295…`). v0.10 נשמר כהיסטורי ומסומן SUPERSEDED רק אחרי קבלת ה-successor.
**Scope:** `morning` · tasks `leaving_home` (plannable) · `dressing` / `bag_items` (describable) · גילאי 4–7
**Delta:** ראו §67.1. בסיס הטקסט הוא עותק ה-repo של v0.10 (= עותק Drive + §4.3, §4.4, §24.5), מסונכרן ל-REV3 ול-`4499671`. אין סמנטיקה חדשה מעבר לאמת שאושרה או שוחררה.

> **PROVENANCE NOTE — GOVERNANCE RATIFICATION (03.10.2026)**
> §4.3 (K2 activation), §4.4 (PR-B Morning moment selection) ו-§24.5 (Target support actions + ProgressProjection) **אושררו בהחלטת governance של Main Control Tower ב-03.10.2026**, על בסיס התנהגות שכבר שוחררה והתקבלה ב-Production (commit `4499671`) ועל בסיס אמת Progress / Product שכבר התקבלה.
> - **זה אינו אישור היסטורי.** הסעיפים נכנסו לעותק ה-repo דרך PR #13 (27.9), PR #16 (27.9) ו-PR #20 (28.9), בלי החלטת Drive מקבילה. אין לייחס להם אישור שלא היה קיים בתאריכים אלה.
> - §4.3: אושרר; המכניקה נכללת רק ככל שהיא מתארת התנהגות משוחררת ומקובלת.
> - §4.4: אושרר כהתנהגות מוצר משוחררת, בתאריך האשרור.
> - §24.5: **סמנטיקה בלבד.**
> - **Copy:** החוזה מגדיר סמנטיקה, לא Voice locks סופיים. כל מחרוזת משוחררת שמופיעה בחוזה מסומנת `RELEASED PRESENTATION VALUE` בלבד, בבעלות VOICE / PRODUCT PRESENTATION, ואינה אמת Voice קנונית.

**היסטוריית גרסה (נשמר):** v0.10 · 26.9.2026 (§67) · K2 activation delta 27.9.2026 (§4.3) · PR-B 27.9.2026 (§4.4) · PR-F 28.9.2026 (§24.5).
**v0.9 patch history (נשמר):** Pre-Day Projection Patch · Review Closure Patch · Final Professional Review Patch (24.9.2026). התוכן שלהם נשמר בגוף המסמך.

---

# 0. Purpose

מסמך זה מגדיר את ה־public technical boundary בין:

```text
Application Layer
→ EngineAdapter
→ Canonical Response
→ Application Transition
→ Parent-Renderable Projection

```

מטרת v0.9 הייתה ליישר את ה־presentation surface עם Bank v0.9 ועם First Plan / Pre-Day v0.3. **v0.10** מוסיף: DomainScope לפי שלבים, CoverageGap מוכלל, bootstrap והמשכיות דרך RESUME, abandoned check-in, Child Preparation presentation state, Parent Reflection ו-Home projections (§67).

הדלתא מוסיפה בלבד:

- provenance קפוא של ה־KnowledgeSnapshot שהוביל ל־Planning
- Parent Understanding resolved ל־First Plan
- Success Signal מפורש ל־First Plan
- Parent Role ו־Child Preparation ל־Pre-Day
- Announcement מפורש ל־Pre-Day כאשר הוא קיים בתכנית
- Success Signal מפורש ל־Pre-Day
- ~~visibility אפליקטיבי ל־Child Preparation~~. הוחלף ב-v0.10 (§24.2): נראות לפי requirement + presentation state שבבעלות המנוע

ה־UI ממשיך לקבל תוכן מלא, resolved ו־parent-facing בלי:

- לקרוא Intervention Bank
- לקרוא Support Ladder
- לקרוא Safety SoT
- לבחור wording מקצועי
- למפות Support Level לטקסט
- להרכיב escalation
- להשלים placeholders
- לייצר fallback copy
- להמציא UX mapping מקצועי

מקורות התוכן המחייבים לגרסה זו:

1. `INTERVENTION_BANK_leaving_home_B2_v0_9`
2. `CHILD_SUPPORT_LADDER_v0_5`
3. `SAFETY_GATE_MASTER_SPEC_v1_0`
4. `FIRST_PLAN_CARD_CONTENT_SPEC_v0_5`
5. `PRE_DAY_PARENT_CARD_SPEC_v0_5`
6. `KNOWLEDGE_GAP_REGISTRY_v0_4`

ה־Intervention Bank נועל:

```text
Bank Template
→ Planning Instance
→ Rendered Output

```

וה־Rendered Output נוצר מה־Instance שכבר resolved; אם שדה חסר ב־Instance — אין Rendered Output.

אין במסמך זה שינוי של:

- Professional Decision Logic
- Application States
- Capability logic
- Bottleneck logic
- Target logic
- KEEP / ADJUST / FADE
- Observation semantics
- Safety decision semantics
- Safety priority
- Evidence / Target distinction
- Runtime fallback semantics
- blocked SOS status

---

# 1. Parent-Renderable Boundary Principle

ה־UI מקבל רק:

```text
canonical result
+
resolved parent-facing projection

```

ה־UI אינו מבצע:

```text
PlanningInstance.interventionId
→ lookup Bank
→ find move
→ find guardrail
→ map support level
→ choose runtime text

```

ה־mapping הזה חייב להתרחש לפני ה־UI.

ה־Bank כבר מגדיר שה־Rendered אינו נוצר ישירות מרשומת Template, אלא מ־Planning Instance resolved.

---

# 2. Zod 3.25 Composition Rule

נשמר ללא שינוי מ־v0.7.

כל option ישיר בתוך:

```ts
z.discriminatedUnion(...)

```

חייב להיות `ZodObject`.

הדפוס:

```text
strict base ZodObjects
→ discriminatedUnion
→ union-level superRefine

```

Nested schemas רשאים להיות refined schemas.

לכן, לדוגמה:

```ts
ParentSupportPresentationSchema

```

יכול להיות field בתוך:

```ts
FirstPlanProjectionSchema

```

כל עוד `FirstPlanProjectionSchema` עצמו נשאר `ZodObject`.

---

# 3. ApplicationStateName

```ts
type ApplicationStateName =
  | "NO_ACTIVE_TARGET"
  | "ASSESSING"
  | "HOLDING"
  | "TARGET_PROPOSED"
  | "PLAN_READY"
  | "ATTEMPT_IN_PROGRESS"
  | "PENDING_CHECKIN"
  | "LEARNING_RESULT"
  | "REPLANNING"
  | "TARGET_RECHECK"
  | "COVERAGE_GAP"
  | "SAFETY_REPLACEMENT";

```

```ts
const ApplicationStateNameSchema = z.enum([
  "NO_ACTIVE_TARGET",
  "ASSESSING",
  "HOLDING",
  "TARGET_PROPOSED",
  "PLAN_READY",
  "ATTEMPT_IN_PROGRESS",
  "PENDING_CHECKIN",
  "LEARNING_RESULT",
  "REPLANNING",
  "TARGET_RECHECK",
  "COVERAGE_GAP",
  "SAFETY_REPLACEMENT",
]);

```

`RUNTIME_READY` אינו קיים.

---

# 4. DomainScope

**v0.10.** DomainScope אחד. `task`, `moment` ו-`independenceUnit` הם nullable, ויש שלושה שלבים. `arena` נשאר `morning` בלבד. `moment` ו-`independenceUnit` **אינם קבועים לפי task**: הם נקבעים לפי ה-Target, ורשומים ב-registry.

```ts
type Task = "leaving_home" | "dressing" | "bag_items";           // teeth: not in v0.10
type Moment = "transition" | "initiation" | "continuation";        // grows from SoT only
type IndependenceUnit =
  | "arrives_at_door_from_activity"
  | "dressing.first_item_start"
  | "bag_items.single_item_start"
  | "bag_items.fixed_list_from_stop";                              // grows from SoT only

type DomainScope = {
  arena: "morning";
  task: Task | null;
  moment: Moment | null;
  independenceUnit: IndependenceUnit | null;
};
```

```ts
const TaskSchema = z.enum(["leaving_home", "dressing", "bag_items"]);
const MomentSchema = z.enum(["transition", "initiation", "continuation"]);
const IndependenceUnitSchema = z.enum([
  "arrives_at_door_from_activity",
  "dressing.first_item_start",
  "bag_items.single_item_start",
  "bag_items.fixed_list_from_stop",
]);

/** Professionally closed resolved target scopes. SoT only. No Bank / coverage field.
 *  Validates scope tuples only. key, bottleneck and transition are provenance / target metadata,
 *  not scope dimensions: K1/K2 and K4/K5 intentionally share one DomainScope tuple. */
const RESOLVED_TARGET_SCOPE_REGISTRY = [
  { key: "LH-B2", task: "leaving_home", moment: "transition", independenceUnit: "arrives_at_door_from_activity",
    bottleneck: "B2", transition: null, sourceRef: "ENGINE_ADAPTER_CONTRACT_v0_9 §4" },
  { key: "K1", task: "dressing", moment: "initiation", independenceUnit: "dressing.first_item_start", bottleneck: "B1", transition: "3->2" },
  { key: "K2", task: "dressing", moment: "initiation", independenceUnit: "dressing.first_item_start", bottleneck: "B1", transition: "4->3" },
  { key: "K3", task: "bag_items", moment: "initiation", independenceUnit: "bag_items.single_item_start", bottleneck: "B1", transition: "4->3" },
  { key: "K4", task: "bag_items", moment: "continuation", independenceUnit: "bag_items.fixed_list_from_stop", bottleneck: "B3", transition: "3->2" },
  { key: "K5", task: "bag_items", moment: "continuation", independenceUnit: "bag_items.fixed_list_from_stop", bottleneck: "B3", transition: "2->1" },
] as const;

const UNCLASSIFIED_MORNING_SCOPE = { arena: "morning", task: null, moment: null, independenceUnit: null } as const;

const DomainScopeSchema = z.object({
  arena: z.literal("morning"),
  task: TaskSchema.nullable(),
  moment: MomentSchema.nullable(),
  independenceUnit: IndependenceUnitSchema.nullable(),
}).strict().superRefine((s, ctx) => {
  if (s.task === null && (s.moment !== null || s.independenceUnit !== null))
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: "moment/unit require a classified task" });
  if ((s.moment === null) !== (s.independenceUnit === null))
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: "moment and independenceUnit resolve together" });
  if (s.moment !== null && !RESOLVED_TARGET_SCOPE_REGISTRY.some((r) =>
      r.task === s.task && r.moment === s.moment && r.independenceUnit === s.independenceUnit))
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: "resolved scope not in registry" });
});
```

## 4.1 שלבים

| שלב | task | moment / independenceUnit |
|---|---|---|
| `unclassified` | null | null / null |
| `task_classified` | ✓ | null / null |
| `target_resolved` | ✓ | ✓ / ✓, רשום ב-registry |

| שדה | שלב מותר |
|---|---|
| `CommandContext.scope` | null רק ב-`RESUME_CONTINUITY` (§8). ב-`SUBMIT_SCENE`: תמיד `UNCLASSIFIED_MORNING_SCOPE`, גם מתוך COVERAGE_GAP; scope קודם לא דולף לסיווג scene חדש. בשאר: ה-scope הקנוני האחרון |
| `KnowledgeSnapshot.scope` | `task_classified` או `target_resolved` |
| `TargetProposal.scope`, `ActiveTarget.scope` | `target_resolved`. **תקפות מקצועית בלבד, בלי בדיקת Bank** |
| `CoverageState.SUPPORTED.scope` | `target_resolved` |
| `CoverageGap.scope` | לפי phase (§37) |
| `ContinuityResult.scope` | כל שלב |

שלוש שכבות נפרדות:
1. **זיהוי scope:** classification של המנוע.
2. **תקפות מקצועית של Target:** ה-registry.
3. **כיסוי Bank:** `RESOLVE_PLANNING` מחזיר `planning_resolved` או `coverage_gap(target_creation)`.

## 4.2 מפתחות מקצועיים סגורים: CONTRACT IDENTIFIER MAPPING (מאושר, D2)

| key | task | bottleneck | מעבר | סטטוס מקצועי | moment | independenceUnit |
|---|---|---|---|---|---|---|
| K1 | dressing | B1 | 3→2 | CLOSED · MAPPED · Bank DRAFT · not implementation-ready / not active | `initiation` | `dressing.first_item_start` |
| K2 | dressing | B1 | 4→3 | CLOSED · MAPPED · **ACTIVE · implementation-enabled** (DR-B1-01, Bank v0.7, KGR v0.6; §4.3) | `initiation` | `dressing.first_item_start` |
| K3 | bag_items | B1 | 4→3 | CLOSED · MAPPED · Bank DRAFT · not implementation-ready / not active | `initiation` | `bag_items.single_item_start` |
| K4 | bag_items | B3 | 3→2 | CLOSED · MAPPED · Bank DRAFT · not implementation-ready / not active | `continuation` | `bag_items.fixed_list_from_stop` |
| K5 | bag_items | B3 | 2→1 | CLOSED · MAPPED · Bank DRAFT · not implementation-ready / not active | `continuation` | `bag_items.fixed_list_from_stop` |

- ה-registry מאמת צירופי scope בלבד. K1/K2 ו-K4/K5 חולקים בכוונה אותו צירוף. key, bottleneck ומעבר הם provenance / metadata של ה-Target, לא ממדי scope.
- `continuation` הוא ה-moment של יחידת ה-Target ב-K4/K5. חלון ה-60s של KG-002 (התחלה אחרי עצירה) לא משנה זאת.
- ההתאמה בין TargetProposal למפתח (bottleneck של ה-KnowledgeSnapshot המקושר ו-`startingSupportLevel → targetSupportLevel`) נבדקת ב-invariant בין ישויות.
- **Bank DRAFT, לא פעיל:** ה-Bank המקצועי ל-K1, K3, K4, K5 קיים כ-DRAFT, not implementation-ready / not active. עד שיופעל, TargetProposal תקף במפתחות אלה מגיע ל-`coverage_gap(target_creation)` ב-`RESOLVE_PLANNING`. K2 הופעל (§4.3).
- **סיווג intake** של dressing / bag_items אינו חלק מ-D2 (D4). עד D4, ניתוב ה-fixture הקיים לתיאורים מחוץ ל-B2 הוא התנהגות legacy זמנית בענף האינטגרציה, לא התנהגות נורמטיבית של v0.10.

## 4.3 K2 ACTIVATION DELTA (DR-B1-01 · dressing / B1 / 4→3 · 27.9.2026)

> **Ratified 03.10.2026** (Main CT governance) על בסיס התנהגות משוחררת ומקובלת (`4499671`). לא אישור היסטורי. ראו Provenance note בראש המסמך.

מקורות (נוכחיים): `INTERVENTION_BANK_dressing_bag_items_v0_7` (DR-B1-01) · `KNOWLEDGE_GAP_REGISTRY_v0_6` · `INDEPENDENCE_TARGET_v0_6` §5.1 (גיל 4). מקורות ההפעלה המקוריים (27.9): Bank v0.6 §0.0, §2 · KGR v0.5. אין שינוי בלוגיקה המקצועית, ב-Support Ladder, ב-Capability, ב-Observation, ב-Progress או בסמנטיקת Safety.

1. **Intervention types:** `InterventionId = "LH-B2-01" | "LH-B2-02" | "DR-B1-01"` ב-`PlanningInstance.selectedInterventionId`, `ResolvedMove.interventionId`, `ResolvedEscalationChain.interventionId`. move ו-chain חייבים להשתייך ל-`selectedInterventionId`. המזהים של K1, K3, K4, K5 לא קיימים ב-enum.
2. **Setup:** `ResolvedSetupComponent.componentId` מקבל `SETUP-DR-CLOTHES-ORDERED` (required ב-K2). ב-K2 אין setup אופציונלי.
3. **Chain:** planned 3 → `escalation_1` actual 4 → `escalation_2` actual 5 → wait מלא → `STOP_MEASUREMENT`. בכל step, `action.source` שווה ל-`source` של ה-step. `ResolvedChainTerminal.action: CompressedRuntimeAction` מפורש, `source = terminal` (ב-K2: שורת ה-terminal המאושרת; ב-LH: שורת ifNotStart השלישית המאושרת). הטקסט לא נגזר מ-`ifNotStart`.
4. **Guardrail:** `PlanningInstance.resolvedGuardrail: ResolvedGuardrail | null`; `guardrailText: ParentFacingText | null` ב-First Plan, Pre-Day ו-Runtime. דפוס הורה לא פתור → null. אין דפוס ברירת מחדל ואין הסקה. `sourcePattern` נשאר `loop | quiet_waiver | zero_to_100 | once`.
5. **`safetyStopText: ParentFacingText | null`** ב-First Plan, Pre-Day ו-Runtime בלבד. אותו ערך בכל המשטחים. לעולם לא חלק מ-`doNot`, `ifNotStart`/`ifNotStartPreview` או `guardrailText`.
6. **Post-measurement completion:** `CompressedRuntimeAction.source` מקבל `post_measurement_completion`. `PlanningInstance.resolvedPostMeasurementCompletion: CompressedRuntimeAction | null`, מחוץ ל-`resolvedEscalationChain`, source חייב להיות `post_measurement_completion`. ב-K2 הערך קיים (support 5). הטקסט להורה עובר ב-`RuntimeProjection.actionText` הקיים; אין `postMeasurementActionText`.
7. **Runtime cursor + `REPORT_RUNTIME_NO_START`:** ל-AttemptSession יש `runtimeCursor` בבעלות המנוע: `initial_move | escalation_1 | escalation_2 | stop_measurement | post_measurement_completion`. `START_RUNTIME_ATTEMPT` → `initial_move`. פקודה חדשה `REPORT_RUNTIME_NO_START { attemptSessionRef, runtimeActionRef }`: כל דיווח מקדם צעד אחד (`initial_move → escalation_1 → escalation_2 → stop_measurement`) ומחזיר `runtime_action_ready` עם אותו `attemptSessionRef` ו-`runtimeActionRef` חדש. ב-`stop_measurement` המדידה קפואה (`measurement = stopped`), `currentAction` = פעולת ה-terminal. חוקי רק כש-`applicationState = ATTEMPT_IN_PROGRESS`, `measurement = measuring`, `runtimeActionRef` = הפעולה הקנונית הנוכחית, וה-wait הקנוני המלא של הפעולה הנוכחית עבר. דיווח מוקדם, stale או כפול → `INVARIANT_VIOLATION`, בלי commit ובלי שינוי revision (replay מדויק של אותו `requestId` מחזיר את התשובה השמורה). הדיווח לא יוצר Observation, לא מפעיל Progress ולא משנה actual support או validity. **Application wait gate:** הכפתור (RELEASED PRESENTATION VALUE: "עדיין אין התחלה"; COPY OWNER: VOICE / PRODUCT PRESENTATION) מוצג disabled עד שעובר `resolvedWaitWindowMs` של ה-RuntimeAction הנוכחי, ו-`runtimeActionRef` חדש מאפס את הזכאות. לחיצה מוקדמת לא שולחת פקודה. האפליקציה משתמשת רק בפעולה הנוכחית, ב-wait הקנוני שלה ובמצב ה-session; היא לא מסיקה escalation, STOP או פעולה מקצועית. ולידציית המנוע לא משתנה.
8. **`stop_measurement`:** `EndRuntimeCompletionKind = normal_end | user_ended | stop_measurement`. `END_RUNTIME_ATTEMPT{stop_measurement}` חוקי רק כש-`runtimeCursor = stop_measurement` ו-`resolvedPostMeasurementCompletion` קיים → נשארים ב-`ATTEMPT_IN_PROGRESS` → `runtime_action_ready` עם אותו `attemptSessionRef`, `currentAction.source = post_measurement_completion`, cursor → `post_measurement_completion`. אין AttemptSession חדש ואין חזרה ל-initial או ל-escalation. אחרי ההשלמה, `normal_end`/`user_ended` → `PENDING_CHECKIN`.
9. **`AllowedNextAction.allowedCompletionKinds?: EndRuntimeCompletionKind[]`:** חובה ולא ריק רק ב-`END_RUNTIME_ATTEMPT`, אסור בכל פעולה אחרת. חשיפה לפי cursor: `initial_move` / `escalation_1` / `escalation_2` → `[normal_end, user_ended]` + `REPORT_RUNTIME_NO_START`; `stop_measurement` → `[stop_measurement, user_ended]` אם יש השלמה, אחרת `[user_ended]`; `post_measurement_completion` → `[normal_end, user_ended]`. ה-union הזמני `[normal_end, stop_measurement, user_ended]` הוסר. `completionKind` שלא ברשימה הקנונית הנוכחית → `INVARIANT_VIOLATION`, בלי commit ובלי שינוי revision (PD-4 fail closed).
10. **`RuntimeProjection.ifNotStart`:** מערך ריק מותר רק כש-`currentAction.source = post_measurement_completion` (בדיקה ברמת ה-envelope), ואז `actionText` שווה לטקסט ההשלמה. בכל cursor לפני ההשלמה ב-K2: שלוש שורות בדיוק (escalation 1, escalation 2, terminal); `actionText` = הפעולה הקנונית של ה-cursor.
11. **Identity boundary:** המנוע לא יודע מי הילד ומחזיר את הגרסה הניטרלית המאושרת. tokens של זהות קיימים רק ב-template source פנימי של האפליקציה. Application Identity Resolver: גרסה דקדוקית סגורה קודם, token שני, בלי החלפה גלובלית ובלי לוכסנים; שם או מגדר חסרים → הגרסה הניטרלית המאושרת; token שלא נפתר → כישלון validation. הפלט עובר `ParentFacingTextSchema`; ה-renderer לא משכתב זהות ב-K2. ב-Runtime נפתר גם `actionText` (escalation 1/2).
12. **`ParentFacingText`** חוסם גם `DR-B1-`, `STOP_MEASUREMENT`, `post_measurement`.
13. **Provenance ל-K2:** Bank dressing/bag_items v0.7 (DR-B1-01), KGR v0.6 (KG-002, KG-009, KG-011), INDEPENDENCE_TARGET v0.6 §5.1, FIRST_PLAN / PRE_DAY v0.5. provenance של LH לא משתנה.
    - **`bankVersion = "0.6"`** (`templateVersion = "DR-B1-01@0.6"`): ערך ה-metadata המשוחרר נשמר. החוזה אינו משנה runtime metadata.

    ```text
    RELEASED METADATA VALUE:            0.6  (professionalSourceRefs משוחררים: Bank 0.6 · KGR 0.5 · FIRST_PLAN / PRE_DAY 0.5)
    CURRENT PROFESSIONAL SOURCE VERSION: v0.7 (Bank dressing/bag_items) · KGR v0.6
    PARENT-VISIBLE SEMANTIC DIFFERENCE: NONE FOUND
    ```

    - **בסיס הבדיקה (03.10.2026, diff מלא Bank v0.6 → v0.7):** שורת הדלתא של v0.7: "אין שינוי בלוגיקה המקצועית של אף תבנית, ב-copy הנעול של K2, או בסטטוס ההפעלה". ב-DR-B1-01 לא השתנו setup, moves, waits, escalation chain, completion, guardrail או copy. השינויים הם סיווג ראיה בלבד: "הבגדים לא הוכנו בערב" = V6b (לא סטייה של ההורה), ושורה חדשה `planned_change_response` (Observation v0.10 §3ג; Bank v0.7 מצטט v0.8; KG-015). שני הסיווגים כבר קיימים ב-runtime המשוחרר כמשפחות C2 (`cue_not_received`) ו-C1 (`planned_change_response`) של REV3 (`schemas.ts` L124, L584). KGR v0.6: KG-002, KG-009, KG-011 "ללא שינוי"; נוספו KG-015 ו-KG-016, ו-KG-010 נסגר.
    - **מגבלה:** מסלול ה-Check-in של K2 לא הורץ בפועל על ידי 06. הממצא מבוסס מקור וקוד.
    - v0.11 אינו נחסם בגלל מחרוזת ה-metadata בלבד.


## 4.4 PR-B DELTA — MORNING MOMENT SELECTION (27.9.2026)

> **Ratified 03.10.2026 as released Product behavior** (Main CT governance; `4499671`). תאריך האשרור הוא 03.10.2026. לא אישור היסטורי.

Morning היא ה-Arena הפעילה. רגעי בוקר ציבוריים: `leaving_home` (פעיל), `dressing` (פעיל; מכוסה רק dressing / B1 / 4→3 / DR-B1-01), `bag_items` (מוצג, לא פעיל; RELEASED PRESENTATION VALUE: "בהמשך"; COPY OWNER: VOICE / PRODUCT PRESENTATION). Arenas עתידיות (שינה, מסכים, שיעורים, מטלות) מוצגות בנפרד ואינן יוצרות פקודה. אין שינוי בלוגיקה המקצועית.

1. **`SUBMIT_SCENE.payload.declaredTask: Task`** (חובה). הרגע שההורה בחר. אינו DomainScope truth, אינו evidence, אינו מכריח סיווג, ואינו נכתב ל-`CommandContext.scope` (SUBMIT_SCENE טרי נשאר `UNCLASSIFIED_MORNING_SCOPE`).
2. **עקביות סיווג:** `classifiedTask === declaredTask` → ההערכה הקיימת ממשיכה. אי-התאמה → `morning_task_mismatch_clarification_required { clarificationRef, declaredTask, classifiedTask, options: [confirm_classified_task, keep_declared_task] }`, `ASSESSING`, `allowedNextActions = [ANSWER_ASSESSMENT_CLARIFICATION]`. אין scope, knowledge או Target. אין החלפה שקטה. `classifiedTask !== declaredTask` (schema).
3. **תשובה:** `ANSWER_ASSESSMENT_CLARIFICATION` עם `single_choice`, `questionRef = "morning-task-mismatch"`, `optionRef ∈ {confirm_classified_task, keep_declared_task}`.
   - `confirm_classified_task` → ההערכה ממשיכה לפי המשימה המסווגת. האפליקציה מעדכנת את הרגע הנבחר רק אחרי תשובת `ok` של המנוע.
   - `keep_declared_task` → `no_observation_created { reportContext: assessment_evidence, reason: "declared_task_kept_new_description_required", כל ה-refs = null }` → `ASSESSING`, `allowedNextActions = [SUBMIT_SCENE]`. תיאור חדש, בלי Target.
4. **Dressing:** רק התא המכוסה (DR-B1-01) ממשיך. כל סיווג dressing אחר → `coverage_gap(scope_resolution)` עם `task = dressing`. אין fallback, אין closest match, אין הפעלה של K1.
5. **Provenance:** תוצאות סיווג בלבד (mismatch, keep, scope gap) לא מצטטות מקור מקצועי (`professionalSourceRefs = []`, `templateVersion = null`, `bankVersion = null`).

---

# 5. AllowedNextAction

```ts
type AllowedNextActionId =
  | "SUBMIT_SCENE"
  | "ANSWER_ASSESSMENT_CLARIFICATION"
  | "SUBMIT_CAPABILITY_PROBE_RESULT"
  | "SUBMIT_ENVIRONMENT_EVIDENCE"
  | "RESUME_CONTINUITY"
  | "RESOLVE_PLANNING"
  | "START_RUNTIME_ATTEMPT"
  | "REPORT_RUNTIME_NO_START" // K2 delta §4.3
  | "END_RUNTIME_ATTEMPT"
  | "SUBMIT_CHECKIN"
  | "ANSWER_CHECKIN_CLARIFICATION"
  | "EVALUATE_PROGRESS"
  | "REPLAN_AFTER_ADJUST"
  | "RECHECK_AFTER_FADE"
  | "RECORD_CHILD_PREPARATION_PRESENTED"
  | "ACKNOWLEDGE_SAFETY"
  | "VIEW_PLAN"
  | "RETURN_HOME";

```

```ts
const AllowedNextActionIdSchema = z.enum([
  "SUBMIT_SCENE",
  "ANSWER_ASSESSMENT_CLARIFICATION",
  "SUBMIT_CAPABILITY_PROBE_RESULT",
  "SUBMIT_ENVIRONMENT_EVIDENCE",
  "RESUME_CONTINUITY",
  "RESOLVE_PLANNING",
  "START_RUNTIME_ATTEMPT",
  "REPORT_RUNTIME_NO_START",            // v0.11 sync · §4.3
  "END_RUNTIME_ATTEMPT",
  "SUBMIT_CHECKIN",
  "ANSWER_CHECKIN_CLARIFICATION",
  "EVALUATE_PROGRESS",
  "REPLAN_AFTER_ADJUST",
  "RECHECK_AFTER_FADE",
  "RECORD_CHILD_PREPARATION_PRESENTED",
  "ACKNOWLEDGE_SAFETY",
  "VIEW_PLAN",
  "RETURN_HOME",
]);

```

```ts
// v0.11 sync · §4.3 item 8
type EndRuntimeCompletionKind =
  | "normal_end"
  | "user_ended"
  | "stop_measurement";

type AllowedNextAction = {
  id: AllowedNextActionId;

  kind:
    | "command"
    | "navigation"
    | "application";

  allowedCompletionKinds?:            // v0.11 sync · §4.3 item 9
    EndRuntimeCompletionKind[];
};

```

```ts
const EndRuntimeCompletionKindSchema =
  z.enum(["normal_end", "user_ended", "stop_measurement"]);

const AllowedNextActionSchema = z.object({
  id: AllowedNextActionIdSchema,

  kind: z.enum([
    "command",
    "navigation",
    "application",
  ]),

  allowedCompletionKinds:
    z.array(EndRuntimeCompletionKindSchema).optional(),
}).strict()
  .superRefine(/* END_RUNTIME_ATTEMPT: required, non-empty, unique · any other id: forbidden */);

```

`allowedCompletionKinds` חובה, לא ריק וללא כפילויות רק ב-`END_RUNTIME_ATTEMPT`, ואסור בכל פעולה אחרת. החשיפה לפי runtime cursor: §4.3 item 9.

---

`RECORD_CHILD_PREPARATION_PRESENTED` מופיע תמיד עם `kind: "command"`: זה command קנוני שמשנה מצב (§24.2). ה-Application רשאית להפעיל אותו אוטומטית, והוא לא מוצג ככפתור.

---

# 6. ApplicationTransition

```ts
type ApplicationTransition = {
  from: ApplicationStateName;
  to: ApplicationStateName;
};

```

```ts
const ApplicationTransitionSchema = z.object({
  from: ApplicationStateNameSchema,
  to: ApplicationStateNameSchema,
}).strict();

```

---

# 7. Provenance

```ts
type ProvenanceRef = {
  sourceId: string;
  sourceVersion: string | null;
  ref: string;
};

```

```ts
const ProvenanceRefSchema = z.object({
  sourceId: z.string().min(1),
  sourceVersion:
    z.string().min(1).nullable(),
  ref:
    z.string().min(1),
}).strict();

```

```ts
type ResponseProvenance = {
  schemaVersion: string;
  engineVersion: string | null;

  professionalSourceRefs:
    ProvenanceRef[];

  templateVersion:
    string | null;

  bankVersion:
    string | null;

  progressConfigVersion:
    string | null;

  safetyVersion:
    string | null;

  extractionVersion:
    string | null;
};

```

```ts
const ResponseProvenanceSchema = z.object({
  schemaVersion:
    z.string().min(1),

  engineVersion:
    z.string().min(1).nullable(),

  professionalSourceRefs:
    z.array(ProvenanceRefSchema),

  templateVersion:
    z.string().min(1).nullable(),

  bankVersion:
    z.string().min(1).nullable(),

  progressConfigVersion:
    z.string().min(1).nullable(),

  safetyVersion:
    z.string().min(1).nullable(),

  extractionVersion:
    z.string().min(1).nullable(),
}).strict();

```

**`ResponseProvenance.schemaVersion` (v0.10):** גרסת סכמת החוזה שלפיה ה-response תקף. ב-v0.10 הערך הוא `"0.10"`. אינו גרסת אובייקט דומיין (לאובייקטי דומיין יש `schemaVersion` משלהם).

## 7.1 Provenance requirements (v0.9, מעודכן ל-v0.10)

Successful Planning and Runtime responses produced from this presentation delta must report:

```text
contractVersion = "0.10"
bankVersion = "0.9"
professionalSourceRefs includes:
  INTERVENTION_BANK_leaving_home_B2_v0_9
  FIRST_PLAN_CARD_CONTENT_SPEC_v0_5
  PRE_DAY_PARENT_CARD_SPEC_v0_5
```

**v0.11 sync:** זו דרישת v0.9 ל-LH. ה-metadata המשוחרר בפועל (LH ו-K2) מתועד ב-§63; ב-LH, `professionalSourceRefs` המשוחררים מצטטים FIRST_PLAN / PRE_DAY בגרסה `0.4`. החוזה רושם זאת ואינו משנה את ה-runtime.

`KNOWLEDGE_GAP_REGISTRY_v0_4` may appear as provenance for unresolved coverage/fallback status, but it does not authorize executable fallback content or a new decision branch.

---

# 8. CommandContext

**v0.10.**

```ts
type CommandContext = {
  requestId: string;
  contractVersion: "0.10";
  childRef: string | null;
  scope: DomainScope | null;
  applicationState: ApplicationStateName | null;
  stateRevision: string | null;
};
```

```ts
const CommandContextSchema = z.object({
  requestId: z.string().min(1),
  contractVersion: z.literal("0.10"),
  childRef: z.string().min(1).nullable(),
  scope: DomainScopeSchema.nullable(),
  applicationState: ApplicationStateNameSchema.nullable(),
  stateRevision: z.string().min(1).nullable(),
}).strict();
```

**Refine ברמת ה-command** (`ApplicationCommandSchema.superRefine`):

```text
kind === "RESUME_CONTINUITY"
  ⇒ scope === null && applicationState === null && stateRevision === null
  ⇒ childRef: null (fresh bootstrap) | known canonical childRef

kind !== "RESUME_CONTINUITY"   (every mutating command)
  ⇒ childRef, scope, applicationState, stateRevision all non-null
  ⇒ otherwise MALFORMED_COMMAND
```

## 8.1 Bootstrap ו-reconciliation

| RESUME עם | משמעות | תשובת המנוע |
|---|---|---|
| `childRef: null` | **fresh bootstrap.** זה **החריג היחיד לכלל ש-RESUME לא משנה מצב.** מוקצים `childRef` קנוני ורשומת ילד ריקה, בלי נתון מקצועי | `continuity_result` עם `childRef` חדש, `requiredApplicationState: "ASSESSING"`, `scope` `unclassified`, `preservedRefs: []`, revision טרי, `allowedNextActions: [SUBMIT_SCENE]` |
| `childRef` ידוע | **reconciliation בלבד.** לעולם לא מקצה ילד נוסף, ולא משנה state קנוני | `continuity_result` עם אותו `childRef`, המצב הקנוני, `scope` קנוני, revision טרי |
| `childRef` לא מוכר | — | `REF_INTEGRITY_ERROR` |

**Invariants של bootstrap (נעולים):**
1. `RESUME_CONTINUITY` עם `childRef = null` הוא החריג היחיד לכלל ש-RESUME לא משנה מצב.
2. ה-`childRef` מוקצה **idempotently לפי `requestId`**. replay עם אותו `requestId` מחזיר את אותו `childRef` ואת אותה תשובה.
3. ה-client **חייב לשלוח שוב את אותו `requestId` של ה-bootstrap עד שמתקבלת תשובה מוצלחת.** retry אוטומטי לא יוצר `requestId` חדש.
4. **מיד אחרי RESUME מוצלח של ילד חדש, ה-client שומר את ה-`childRef` שהוחזר**, לפני כל command שמשנה מצב.
5. RESUME עם `childRef` קיים הוא reconciliation בלבד, ולעולם לא מקצה ילד נוסף.
6. `stateRevision` לא נשמר בצד ה-client. RESUME מחזיר את ה-revision הנוכחי, וה-controller מחזיק אותו בזיכרון עבור ה-commands הבאים.

**אחרי ה-bootstrap:** `SUBMIT_SCENE` יוצא עם `childRef` שהוחזר, scope `unclassified`, `applicationState: "ASSESSING"` וה-revision שהוחזר. נתוני Child Setup לא משתנים: הגיל עובר ב-payload של SUBMIT_SCENE, והשם והפנייה משמשים לרינדור בלבד.

---

# 9. Observable Input Types

```ts
type ObservableAnswer =
  | {
      kind: "boolean";
      questionRef: string;
      value: boolean;
    }
  | {
      kind: "single_choice";
      questionRef: string;
      optionRef: string;
    }
  | {
      kind: "short_text";
      questionRef: string;
      value: string;
    }
  | {                                  // v0.11 sync · REV3 §2 (G2a multi-select)
      kind: "multi_choice";
      questionRef: string;
      optionRefs: string[];            // min 1
    };

```

```ts
const ObservableAnswerSchema =
  z.discriminatedUnion("kind", [
    z.object({
      kind: z.literal("boolean"),
      questionRef:
        z.string().min(1),
      value:
        z.boolean(),
    }).strict(),

    z.object({
      kind:
        z.literal("single_choice"),
      questionRef:
        z.string().min(1),
      optionRef:
        z.string().min(1),
    }).strict(),

    z.object({
      kind:
        z.literal("short_text"),
      questionRef:
        z.string().min(1),
      value:
        z.string().min(1),
    }).strict(),

    z.object({                         // v0.11 sync · REV3 §2
      kind:
        z.literal("multi_choice"),
      questionRef:
        z.string().min(1),
      optionRefs:
        z.array(z.string().min(1)).min(1),
    }).strict(),
  ]);

```

```ts
type TargetCheckinReport = {
  reportContext:
    "target_checkin";

  reportRef: string;
  pendingCheckinRef: string;

  answers:
    ObservableAnswer[];
};

```

```ts
const TargetCheckinReportSchema = z.object({
  reportContext:
    z.literal("target_checkin"),

  reportRef:
    z.string().min(1),

  pendingCheckinRef:
    z.string().min(1),

  answers:
    z.array(
      ObservableAnswerSchema
    ).min(1),
}).strict();

```

```ts
type AssessmentEvidenceReport = {
  reportContext:
    "assessment_evidence";

  reportRef: string;

  evidenceAttemptRef: string;

  evidenceType:
    | "capability_probe"
    | "environment_check"
    | "bottleneck_observation";

  answers:
    ObservableAnswer[];
};

```

```ts
const AssessmentEvidenceReportSchema = z.object({
  reportContext:
    z.literal(
      "assessment_evidence"
    ),

  reportRef:
    z.string().min(1),

  evidenceAttemptRef:
    z.string().min(1),

  evidenceType:
    z.enum([
      "capability_probe",
      "environment_check",
      "bottleneck_observation",
    ]),

  answers:
    z.array(
      ObservableAnswerSchema
    ).min(1),
}).strict();

```

## 9.1 Target Check-in Report model (v0.11 sync · REV3 §2–§7, §13)

`TargetCheckinReportSchema` מאמת shape בלבד. ה-refinements של REV3 רצים על `SUBMIT_CHECKIN` (cross-field superRefine של `ApplicationCommandSchema`). כללים תלויי template (fact של template אחר, reset מחוץ ל-LH-B2-02) נבדקים במנוע.

**questionRef (released):**

| questionRef | kind | מתי |
|---|---|---|
| `practice-occurred` | boolean | תמיד (G1) |
| `practice-as-planned` | single_choice `yes` / `no` / `unknown` | G1 = yes (G2) |
| `what-was-different` | multi_choice `ContextFactId[]` | רק כש-G2 = `no` (G2a) |
| `success-signal-met` | boolean | G1 = yes (G3) |
| `breakdown-observed` | single_choice | רק כש-`success-signal-met = false` |
| `actual-help` | single_choice | G1 = yes (G4) |
| `parent-held-plan` · `not-held-reason` · `cue-reset-after-seen` · `ran-different-plan` | single_choice / boolean | G1 = yes (G5) |
| `report-completeness` | single_choice (`insufficient_after_clarification`) | מסלול ההבהרה הקיים |

```ts
type ContextFactId =
  | "exit_items_not_in_place"          // V6a · logistical context
  | "announcement_not_said"            // C2 (V6b)
  | "screen_on_before_transition"      // C2 (V6b)
  | "sand_timer_not_started"           // C2 (V6b)
  | "sand_timer_not_visible"           // C2 (V6b)
  | "clothes_not_prepared"             // C2 (V6b) · K2
  | "child_chose_other_garment"        // C1 (§3ג) · K2
  | "unknown";                         // V6c

type PracticeAsPlanned = "yes" | "no" | "unknown";

type NotHeldReason =
  | "early_entry"
  | "repeated_before_wait"
  | "took_over_before_wait"
  | "unplanned_takeover_after_wait"
  | "malformed_step_after_wait";
```

**Report refinements (released, REV3):**
1. `practice-occurred` חובה. G1 = no → הדוח נושא את `practice-occurred` בלבד.
2. G1 = yes → `practice-as-planned` ∈ {yes, no, unknown} חובה.
3. `what-was-different` חובה כש-G2 = `no`, ואסור בכל מקרה אחר. כל ערך הוא `ContextFactId`.
4. `contextFacts` ייחודיים; `unknown` לא מצטרף לאף fact אחר (REV3 §7); `child_chose_other_garment` ו-`clothes_not_prepared` לא יחד (§4a); `cue-reset-after-seen` לא יחד עם אף fact של C2 (B-01, §13).
5. `success-signal-met` חובה; `breakdown-observed` חובה כשהוא false ואסור כשהוא true.
6. `actual-help` חובה.
7. אם `report-completeness = insufficient_after_clarification`: כללים 8–12 לא נבדקים (מסלול ההבהרה הקיים).
8. `parent-held-plan` ∈ {held, not_held} חובה.
9. `held` → אין `not-held-reason`, אין reset, אין V7.
10. `not_held` → בדיוק אחד מ: `not-held-reason` · `cue-reset-after-seen` · `ran-different-plan`.
11. `not-held-reason` ∈ `NotHeldReason`. `skipped_setup` אינו ערך (REV3 §14).
12. צימודים: `more_than_planned` ⇒ `not_held`; `unplanned_takeover_after_wait` ⇒ `more_than_planned`; `malformed_step_after_wait` ⇒ `actual-help ≠ planned_support`.

---

# 10. Application Commands

**v0.10:** נוסף command אחד, `RECORD_CHILD_PREPARATION_PRESENTED` (§24.2). הסמנטיקה של `RESUME_CONTINUITY` הורחבה (§8.1).
**v0.11 sync (released):** `REPORT_RUNTIME_NO_START` (§4.3 item 7); `END_RUNTIME_ATTEMPT.completionKind` כולל `stop_measurement` (§4.3 item 8); `SUBMIT_SCENE.declaredTask` (§4.4); refinements של דוח ה-check-in ב-`SUBMIT_CHECKIN` (§9.1).

```ts
type ApplicationCommandName =
  | "SUBMIT_SCENE"
  | "ANSWER_ASSESSMENT_CLARIFICATION"
  | "SUBMIT_CAPABILITY_PROBE_RESULT"
  | "SUBMIT_ENVIRONMENT_EVIDENCE"
  | "RESUME_CONTINUITY"
  | "RESOLVE_PLANNING"
  | "START_RUNTIME_ATTEMPT"
  | "REPORT_RUNTIME_NO_START"          // v0.11 sync · §4.3
  | "END_RUNTIME_ATTEMPT"
  | "SUBMIT_CHECKIN"
  | "ANSWER_CHECKIN_CLARIFICATION"
  | "EVALUATE_PROGRESS"
  | "REPLAN_AFTER_ADJUST"
  | "RECHECK_AFTER_FADE"
  | "RECORD_CHILD_PREPARATION_PRESENTED";

```

```ts
const ApplicationCommandNameSchema = z.enum([
  "SUBMIT_SCENE",
  "ANSWER_ASSESSMENT_CLARIFICATION",
  "SUBMIT_CAPABILITY_PROBE_RESULT",
  "SUBMIT_ENVIRONMENT_EVIDENCE",
  "RESUME_CONTINUITY",
  "RESOLVE_PLANNING",
  "START_RUNTIME_ATTEMPT",
  "REPORT_RUNTIME_NO_START",            // v0.11 sync · §4.3
  "END_RUNTIME_ATTEMPT",
  "SUBMIT_CHECKIN",
  "ANSWER_CHECKIN_CLARIFICATION",
  "EVALUATE_PROGRESS",
  "REPLAN_AFTER_ADJUST",
  "RECHECK_AFTER_FADE",
  "RECORD_CHILD_PREPARATION_PRESENTED",
]);

```

```ts
type SubmitSceneCommand = {
  kind: "SUBMIT_SCENE";
  context: CommandContext;

  payload: {
    rawScene: string;

    inputMode:
      | "text"
      | "voice_transcript";

    childAge:
      4 | 5 | 6 | 7;

    declaredTask:
      Task;            // v0.11 sync · §4.4 · חובה
  };
};

```

```ts
type AnswerAssessmentClarificationCommand = {
  kind:
    "ANSWER_ASSESSMENT_CLARIFICATION";

  context:
    CommandContext;

  payload: {
    clarificationRef: string;
    answer: ObservableAnswer;
  };
};

```

```ts
type SubmitCapabilityProbeResultCommand = {
  kind:
    "SUBMIT_CAPABILITY_PROBE_RESULT";

  context:
    CommandContext;

  payload: {
    probeRef: string;
    report:
      AssessmentEvidenceReport;
    priorEvidenceReportRef:
      string | null;
  };
};

```

```ts
type SubmitEnvironmentEvidenceCommand = {
  kind:
    "SUBMIT_ENVIRONMENT_EVIDENCE";

  context:
    CommandContext;

  payload: {
    environmentCheckRef: string;
    report:
      AssessmentEvidenceReport;
    priorEvidenceReportRef:
      string | null;
  };
};

```

```ts
type ResumeContinuityCommand = {
  kind: "RESUME_CONTINUITY";
  context: CommandContext;

  payload: {
    activeTargetRef:
      string | null;

    planningInstanceRef:
      string | null;

    pendingCheckinRef:
      string | null;
  };
};

```

```ts
type ResolvePlanningCommand = {
  kind: "RESOLVE_PLANNING";
  context: CommandContext;

  payload: {
    targetProposalRef: string;
    knowledgeSnapshotRef: string;
  };
};

```

```ts
type StartRuntimeAttemptCommand = {
  kind:
    "START_RUNTIME_ATTEMPT";

  context:
    CommandContext;

  payload: {
    targetRef: string;
    planningInstanceRef: string;
  };
};

```

```ts
type EndRuntimeAttemptCommand = {
  kind:
    "END_RUNTIME_ATTEMPT";

  context:
    CommandContext;

  payload: {
    attemptSessionRef: string;

    completionKind:
      EndRuntimeCompletionKind;        // v0.11 sync · normal_end | user_ended | stop_measurement (§4.3 item 8)
  };
};

```

```ts
// v0.11 sync · §4.3 item 7
type ReportRuntimeNoStartCommand = {
  kind:
    "REPORT_RUNTIME_NO_START";

  context:
    CommandContext;

  payload: {
    attemptSessionRef: string;
    runtimeActionRef: string;          // must be the current canonical RuntimeAction
  };
};

```

```ts
type SubmitCheckinCommand = {
  kind: "SUBMIT_CHECKIN";
  context: CommandContext;

  payload: {
    pendingCheckinRef: string;
    report:
      TargetCheckinReport;
  };
};

```

```ts
type AnswerCheckinClarificationCommand = {
  kind:
    "ANSWER_CHECKIN_CLARIFICATION";

  context:
    CommandContext;

  payload: {
    pendingCheckinRef: string;
    clarificationRef: string;
    answer: ObservableAnswer;
  };
};

```

```ts
type EvaluateProgressCommand = {
  kind: "EVALUATE_PROGRESS";
  context: CommandContext;

  payload: {
    targetRef: string;
    latestObservationRef: string;
  };
};

```

```ts
type ReplanAfterAdjustCommand = {
  kind:
    "REPLAN_AFTER_ADJUST";

  context:
    CommandContext;

  payload: {
    targetRef: string;
    progressSnapshotRef: string;
    currentPlanningInstanceRef: string;
  };
};

```

```ts
type RecheckAfterFadeCommand = {
  kind:
    "RECHECK_AFTER_FADE";

  context:
    CommandContext;

  payload: {
    closedTargetRef: string;
    closingProgressSnapshotRef: string;
  };
};

```

```ts
type ApplicationCommand =
  | SubmitSceneCommand
  | AnswerAssessmentClarificationCommand
  | SubmitCapabilityProbeResultCommand
  | SubmitEnvironmentEvidenceCommand
  | ResumeContinuityCommand
  | ResolvePlanningCommand
  | StartRuntimeAttemptCommand
  | ReportRuntimeNoStartCommand        // v0.11 sync · §4.3
  | EndRuntimeAttemptCommand
  | SubmitCheckinCommand
  | AnswerCheckinClarificationCommand
  | EvaluateProgressCommand
  | ReplanAfterAdjustCommand
  | RecheckAfterFadeCommand
  | RecordChildPreparationPresentedCommand;

```

```ts
type RecordChildPreparationPresentedCommand = {
  kind: "RECORD_CHILD_PREPARATION_PRESENTED";
  context: CommandContext;            // mutating: all context fields non-null
  payload: {
    planningInstanceRef: string;      // must equal the active PlanningInstance
  };
};
```

Zod composition נשאר בדיוק לפי v0.7:

```text
Base strict objects
→ discriminatedUnion("kind")
→ cross-field superRefine

```

שאר ה-commands ללא שינוי סמנטי, מלבד הכללים של `CommandContext` (§8).

---

# 11. Knowledge / Target Types

ללא שינוי מקצועי. **v0.10:** `KnowledgeSnapshot.scope` חייב להיות ב-`task_classified+`. `TargetProposal.scope` ו-`ActiveTarget.scope` חייבים להיות ב-`target_resolved` (§4.1).

```ts
type KnowledgeSnapshot = {
  knowledgeSnapshotRef: string;
  childRef: string;
  scope: DomainScope;

  conditions:
    | "normal"
    | "constrained"
    | "unknown";

  capability: {
    knowsWhat:
      | "yes"
      | "no"
      | "unknown";

    knowsHow:
      | "yes"
      | "partial"
      | "no"
      | "unknown";

    executes:
      | "yes"
      | "partial"
      | "no"
      | "condition_dependent"
      | "unknown";

    promptNeeded:
      | "none"
      | "environmental"
      | "verbal"
      | "model"
      | "physical_partial"
      | "physical_full"
      | "unknown";

    breakdown:
      | "none"
      | "start"
      | "mid"
      | "end"
      | "quality_skill"
      | "quality_execution"
      | "unknown";

    startingSupportLevel:
      | 1 | 2 | 3 | 4 | 5 | 6
      | "unknown";
  };

  environment: {
    route:
      | "E1"
      | "E2"
      | "E3"
      | "E4"
      | "E5"
      | "clean";
  };

  bottleneck: {
    value:
      | "B1"
      | "B2"
      | "B3"
      | "B4"
      | "B6"
      | "unknown";

    status:
      "hypothesis";
  };

  evidenceRefs: string[];
  schemaVersion: string;
};

```

```ts
type TargetProposal = {
  targetProposalRef: string;
  scope: DomainScope;

  action: string;
  context: string;

  startingSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  targetSupportLevel:
    1 | 2 | 3 | 4 | 5;

  practiceWindow:
    | "calm"
    | "morning";

  successSignal: string;
  unitBoundary: string;

  defaultFloor:
    | 1 | 2 | 3 | 4 | 5 | 6
    | "UNKNOWN";

  reliesOnObservedCapability:
    boolean;

  knowledgeSnapshotRef: string;

  startingSupportAction: ParentFacingText;   // v0.11 sync · §24.5
  targetSupportAction: ParentFacingText;     // v0.11 sync · §24.5
};

```

```ts
type ActiveTarget = {
  targetRef: string;
  sourceTargetProposalRef: string;

  scope: DomainScope;

  action: string;
  context: string;

  startingSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  targetSupportLevel:
    1 | 2 | 3 | 4 | 5;

  practiceWindow:
    | "calm"
    | "morning";

  successSignal: string;
  unitBoundary: string;

  defaultFloor:
    | 1 | 2 | 3 | 4 | 5 | 6
    | "UNKNOWN";

  reliesOnObservedCapability:
    boolean;

  startingSupportAction: ParentFacingText;   // v0.11 sync · §24.5
  targetSupportAction: ParentFacingText;     // v0.11 sync · §24.5

  createdAt: string;
  schemaVersion: string;
};

```

---

# 12. Resolved Planning Content

ללא שינוי ב־professional fields. **v0.11 sync:** ה-types מסונכרנים ל-K2 המשוחרר (§4.3 items 1–3, 6). אין התנהגות חדשה.

```ts
// v0.11 sync · §4.3 item 1
type InterventionId =
  | "LH-B2-01"
  | "LH-B2-02"
  | "DR-B1-01";
```

```ts
type ResolvedSetupComponent = {
  componentId:
    | "SETUP-LH-EXIT-READY"
    | "SETUP-LH-STOPPABLE-ACTIVITY"
    | "SETUP-LH-TRANSITION-ANNOUNCEMENT"
    | "SETUP-LH-SAND-TIMER"
    | "SETUP-LH-TRANSITION-OBJECT"
    | "SETUP-DR-CLOTHES-ORDERED";        // v0.11 sync · §4.3 item 2

  source:
    | "required"
    | "optional";

  resolvedText: string;
};

```

```ts
type ResolvedSetup = {
  setupRef: string;

  components:
    ResolvedSetupComponent[];
};

```

```ts
type ResolvedMove = {
  interventionId:
    InterventionId;

  resolvedText: string;
};

```

```ts
type ResolvedGuardrail = {
  sourcePattern:
    | "loop"
    | "quiet_waiver"
    | "zero_to_100"
    | "once";

  resolvedText: string;
};

```

```ts
type CompressedRuntimeAction = {
  actionRef: string;

  source:
    | "initial_move"
    | "escalation_1"
    | "escalation_2"
    | "terminal"
    | "post_measurement_completion";   // v0.11 sync · §4.3 item 6

  resolvedText: string;
};

```

```ts
type ResolvedEscalationStep = {
  source:
    | "escalation_1"
    | "escalation_2";

  action:
    CompressedRuntimeAction;

  actualSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  waitAfterMs:
    number | null;
};

```

```ts
type ResolvedChainTerminal = {
  terminal:
    "STOP_MEASUREMENT";

  action:                             // v0.11 sync · §4.3 item 3 · source = "terminal"
    CompressedRuntimeAction;

  routeToSystemSupportRef:
    string | null;

  routeResolution:
    | "NOT_REQUIRED"
    | "RESOLVED_APPROVED_SOURCE"
    | "UNRESOLVED_KNOWN_GAP";
};

```

```ts
type ResolvedEscalationChain = {
  interventionId:
    InterventionId;

  steps:
    ResolvedEscalationStep[];

  terminal:
    ResolvedChainTerminal;
};

```

```ts
// v0.11 sync · §4.3 item 7 · engine-owned AttemptSession state; not a wire field
type RuntimeCursor =
  | "initial_move"
  | "escalation_1"
  | "escalation_2"
  | "stop_measurement"
  | "post_measurement_completion";
```

- `ResolvedEscalationStep.action.source` שווה ל-`source` של ה-step. `ResolvedChainTerminal.action.source = "terminal"`. move ו-chain שייכים ל-`selectedInterventionId`.
- `RuntimeCursor` הוא מצב של AttemptSession בבעלות המנוע. הוא לא נשלח ב-envelope; ה-Application רואה רק את `currentAction.source` ואת `allowedNextActions`.

## ה־Bank מגדיר, לדוגמה, ב־4→3: הכרזה קבועה, `"דלת."` פעם אחת, המתנה, לאחריה גוף לדלת, ולאחריה יד על הכתף; ב־3→2: שעון חול, שקט, ואז `"דלת."` אחת ורק אחר כך מעבר לגוף.

# 13. Runtime Fallback Types

ללא שינוי.

```ts
type ApprovedRuntimeFallbackRef = {
  ref: string;
  approvedSourceId: string;
  sourceVersion: string;
};

```

```ts
type RuntimeFallbackReference =
  | {
      resolutionStatus:
        "RESOLVED_APPROVED_SOURCE";

      approved:
        ApprovedRuntimeFallbackRef;
    }

  | {
      resolutionStatus:
        "UNRESOLVED_NO_APPROVED_SOURCE";

      ref: string;
    };

```

`SOS_12_Nodes_Bank_v1_0` נשאר:

```text
BLOCKED / REFERENCE ONLY

```

ואינו מקור executable.

---

# 14. RuntimeActionPayload

```ts
type RuntimeActionPayload = {
  currentAction:
    CompressedRuntimeAction;

  resolvedWaitWindowMs:
    number;

  guardrail:
    ResolvedGuardrail | null;

  runtimeFallback:
    RuntimeFallbackReference | null;
};

```

```ts
type RuntimeAction = {
  runtimeActionRef: string;
  targetRef: string;
  planningInstanceRef: string;

  payload:
    RuntimeActionPayload;

  schemaVersion: string;
};

```

---

# 15. PlanningInstance

```ts
type PlanningInstance = {
  planningInstanceRef: string;
  targetRef: string;

  selectedInterventionId:
    InterventionId;                   // v0.11 sync · §4.3 item 1

  startingSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  targetSupportLevel:
    1 | 2 | 3 | 4 | 5;

  practiceWindow:
    | "calm"
    | "morning";

  successSignal: string;

  resolvedSetup:
    ResolvedSetup;

  resolvedMove:
    ResolvedMove;

  resolvedGuardrail:
    ResolvedGuardrail | null;         // v0.11 sync · §4.3 item 4 · unresolved parent pattern → null

  resolvedWaitWindowMs:
    number;

  resolvedEscalationChain:
    ResolvedEscalationChain;

  resolvedPostMeasurementCompletion:  // v0.11 sync · §4.3 item 6 · source = post_measurement_completion
    CompressedRuntimeAction | null;

  resolvedParentRoleLine:
    string;

  resolvedChildPreparationLine:
    string;

  childPreparationRequirement:        // v0.10 · immutable · Bank MUST → REQUIRED, SHOULD → RECOMMENDED
    | "REQUIRED"
    | "RECOMMENDED";

  capabilitySnapshotRef:
    string;

  runtimeFallback:
    RuntimeFallbackReference | null;

  templateVersion: string;
  bankVersion: string;

  createdAt: string;
};

```

`PlanningInstance` הוא עדיין professional/resolved object.

ה־UI אינו מציג אותו ישירות.

שלושת שדות v0.9 הם presentation inputs בלבד. הם אינם משנים intervention selection, validity, Observation או Progress.

`capabilitySnapshotRef` מפנה ל־`KnowledgeSnapshot` הקיים. אין `CapabilitySnapshot` entity ואין store חדש.

בעת Planning חייב להתקיים:

```text
PlanningInstance.capabilitySnapshotRef
=
source TargetProposal.knowledgeSnapshotRef
```

וה־ref חייב להיפתר ל־KnowledgeSnapshot קיים בעל אותו `childRef` ואותו `DomainScope` של ה־Planning transaction. ה־Parent Understanding קורא snapshot זה בלבד, ולא את `currentKnowledgeSnapshotRef` המאוחר יותר.

`resolvedParentRoleLine` ו־`resolvedChildPreparationLine` חייבים להיות resolved, ללא placeholder וללא internal token. הם מגיעים מ־Bank Template v0.9 עם נטיות שכבר נפתרו upstream.

ב־`LH-B2-02`, `resolvedChildPreparationLine` חייב לכלול את **שני רכיבי ההכנה המאושרים** מאותו Template:
1. המשפט לילד לפני הניסיון הראשון.
2. היכרות / תרגול קצר עם שעון החול בזמן רגוע.

אסור להשמיט את רכיב ההיכרות. אסור להוסיף מספר חזרות; מספר התרגולים נשאר `UNKNOWN`. השדה נשאר יחיד ורזולבי — אין פיצול מקצועי חדש של התוכן. `childPreparationRequirement` (v0.10, `REQUIRED | RECOMMENDED`) הוא metadata של presentation ו-gating בלבד: הוא לא משנה את `resolvedChildPreparationLine`, לא יוצר Observation או Progress input, ולא מהווה completion tracking (§24.2).

---

# 16. Parent-Facing Text Primitive

כל text שמגיע ל־parent projection חייב להיות resolved.

```ts
type ParentFacingText = string;

```

```ts
const ParentFacingTextSchema =
  z.string()
    .min(1)
    .superRefine((value, ctx) => {
      const unresolvedPlaceholder =
        /\[[^\]\n]+\]|\{\{[^}]+\}\}/;

      if (
        unresolvedPlaceholder.test(value)
      ) {
        ctx.addIssue({
          code: z.ZodIssueCode.custom,
          message:
            "parent-facing text cannot contain unresolved placeholders",
        });
      }

      const forbiddenInternalTokens = [
        "LH-B2-",
        "wait_window",
        "escalation_",
        "COVERAGE_GAP",            // v0.10: covers BANK_COVERAGE_GAP as well
        "scope_resolution",
        "עוברים לתכנית הקצרה של עכשיו",
        "DR-B1-",                  // v0.11 sync · §4.3 item 12
        "STOP_MEASUREMENT",        // v0.11 sync · §4.3 item 12
        "post_measurement",        // v0.11 sync · §4.3 item 12
      ];

      for (
        const token
        of forbiddenInternalTokens
      ) {
        if (value.includes(token)) {
          ctx.addIssue({
            code:
              z.ZodIssueCode.custom,
            message:
              `parent-facing text contains internal token: ${token}`,
          });
        }
      }
    });

```

**v0.11 · divergence recorded, not resolved (TECHNICAL AUDIT REQUIRED):** רשימת ה-tokens ב-runtime המשוחרר (`schemas.ts` L304–L310) היא `B2`, `LH-B2-`, `DR-B1-`, `wait_window`, `escalation_`, `COVERAGE_GAP`, `STOP_MEASUREMENT`, `post_measurement`, וכן המשפט המלא שהוסר ב-v0.8. ההבדלים מול הרשימה כאן:
- `B2` נחסם ב-runtime ולא מופיע ברשימה כאן (הוא מופיע ברשימת "אין לחשוף" למטה);
- `scope_resolution` רשום כאן (v0.10 §67 שורה 12) ולא נחסם ב-runtime;
- המשפט שהוסר נחסם ב-runtime כמשפט מלא, וכאן כמקטע.
אין שינוי בקוד ואין שינוי בכלל. ההכרעה איזו רשימה נכונה היא Code / Governance.

ה־projection יכול לכלול את המספר של Support Level רק דרך `ParentSupportPresentation.level`, משום שזה חלק מהחוזה המפורש של v0.9.

אין לחשוף:

- `B2`
- intervention ID
- `escalation_1`
- `escalation_2`
- internal support enum name
- `wait_window`
- validity flags
- canonical decision enum

---

## 16.1 PlanningInstanceSchema v0.9 delta

ה־schema נשאר `strict`. שלושת השדות החדשים הם required ב־slice הנוכחי:

```ts
const PlanningInstanceSchema = z.object({
  planningInstanceRef: z.string().min(1),
  targetRef: z.string().min(1),
  selectedInterventionId: z.enum([
    "LH-B2-01",
    "LH-B2-02",
    "DR-B1-01",                                    // v0.11 sync
  ]),
  startingSupportLevel: SupportLevelSchema,
  targetSupportLevel: TargetSupportLevelSchema,
  practiceWindow: z.enum(["calm", "morning"]),
  successSignal: z.string().min(1),
  resolvedSetup: ResolvedSetupSchema,
  resolvedMove: ResolvedMoveSchema,
  resolvedGuardrail: ResolvedGuardrailSchema.nullable(),                // v0.11 sync
  resolvedWaitWindowMs: z.number().int().nonnegative(),
  resolvedEscalationChain: ResolvedEscalationChainSchema,
  resolvedPostMeasurementCompletion: CompressedRuntimeActionSchema.nullable(),  // v0.11 sync
  resolvedParentRoleLine: ParentFacingTextSchema,
  resolvedChildPreparationLine: ParentFacingTextSchema,
  childPreparationRequirement: z.enum(["REQUIRED", "RECOMMENDED"]),   // v0.10
  capabilitySnapshotRef: z.string().min(1),
  runtimeFallback: RuntimeFallbackReferenceSchema.nullable(),
  templateVersion: z.string().min(1),
  bankVersion: z.string().min(1),
  createdAt: z.string().datetime(),
}).strict();
```

Refinements (released): `resolvedMove` ו-`resolvedEscalationChain` שייכים ל-`selectedInterventionId`; `resolvedPostMeasurementCompletion.source = post_measurement_completion` כשהוא קיים.

ה־Zod schema מאמת shape. שוויון ל־`source TargetProposal.knowledgeSnapshotRef`, פתרון ה־ref והתאמת child/scope הם cross-entity invariants ונבדקים לפני commit.

---

# 17. ParentSupportPresentation

## 17.1 Public Type

```ts
type ParentSupportPresentation = {
  level:
    1 | 2 | 3 | 4 | 5 | 6;

  label: string;

  instruction: string;
};

```

---

# 17.2 Canonical Mapping

ה־mapping הוא canonical rendering של הניסוח הקיים ב־`CHILD_SUPPORT_LADDER_v0_5`.

- `label` = שם המדרגה הקיים.
- `instruction` = שדה `מה ההורה עושה` הקיים.

מותר שינוי פיסוק טכני או whitespace בלבד. אסורים paraphrase, קיצור משמעותי, הוספת הסבר, “שיפור UX” ושילוב תוכן משדות אחרים ב־Ladder.

```ts
const PARENT_SUPPORT_PRESENTATION_BY_LEVEL = {
  6: {
    level: 6,
    label: "השלמה מלאה",
    instruction:
      "מבצע. הילד קרוב. ההורה אומר בקול מה הוא עושה, מילה או שתיים.",
  },

  5: {
    level: 5,
    label: "עושים יחד",
    instruction:
      "משתתף בתוך הביצוע. מחזיק את החלק הקשה, הילד עושה חלק מוגדר.",
  },

  4: {
    level: 4,
    label: "מראים",
    instruction:
      "מדגים פעם אחת על עצמו או על פריט זהה, בלי הסבר ובלי לגעת בפריט של הילד. אחר כך נסוג ומחכה.",
  },

  3: {
    level: 3,
    label: "אומרים פעם אחת",
    instruction:
      "אומר שם פריט או שלב פעם אחת, עד 3 מילים. שותק. הגוף לא זז לכיוון הילד. אם אין תגובה, מחכה. לא חוזר. לא מסביר.",
  },

  2: {
    level: 2,
    label: "מסמנים (environmental prompt)",
    instruction:
      "לא מדבר. סימן אחד: אצבע על הפריט, טיימר שמופעל, כרטיס תמונות שהילד עובר עליו. ההורה בקרבת מקום, לא ליד הילד.",
  },

  1: {
    level: 1,
    label: "לבד",
    instruction:
      "לא בתוך המשימה. בבית. בדיקה אחרי completion מותרת ואינה משנה מדרגה.",
  },
} as const;

```

הטקסטים הם canonical rendering של ניסוחי `מה ההורה עושה` הקיימים ב־Ladder. הם אינם נכס copy חדש ואינם כלל מקצועי חדש.

---

# 17.3 Schema

```ts
const ParentSupportPresentationBaseSchema =
  z.object({
    level:
      z.union([
        z.literal(1),
        z.literal(2),
        z.literal(3),
        z.literal(4),
        z.literal(5),
        z.literal(6),
      ]),

    label:
      ParentFacingTextSchema,

    instruction:
      ParentFacingTextSchema,
  }).strict();

```

```ts
const ParentSupportPresentationSchema =
  ParentSupportPresentationBaseSchema
    .superRefine((value, ctx) => {
      const canonical =
        PARENT_SUPPORT_PRESENTATION_BY_LEVEL[
          value.level
        ];

      if (
        value.label !== canonical.label
      ) {
        ctx.addIssue({
          code:
            z.ZodIssueCode.custom,
          path: ["label"],
          message:
            "label must equal the existing Support Ladder label",
        });
      }

      if (
        value.instruction !==
        canonical.instruction
      ) {
        ctx.addIssue({
          code:
            z.ZodIssueCode.custom,
          path: ["instruction"],
          message:
            "instruction must equal the existing Support Ladder 'מה ההורה עושה' wording",
        });
      }
    });

```

כך ה־UI לעולם אינו צריך:

```text
supportLevel 3
→ lookup ladder
→ "אומרים פעם אחת"

```

הוא מקבל את שניהם יחד.

---

# 18. Projection Source Rule

כל Plan / Pre-Day / Runtime projection חייב להיבנות מ־:

```text
PlanningInstance resolved
→ Rendered Output
→ typed projection

```

אסור:

```text
UI
→ Intervention Bank

```

ואסור:

```text
Projection Builder
→ raw Bank Template

```

כאשר Planning Instance חסר שדה resolved — אין projection.

ה־Rendered examples הקנוניים של ה־Bank כבר בנויים סביב:

```text
היעד
בערב
בבוקר
לא
אם לא מתחיל / לא קם

```

## לדוגמה, LH-B2-01 כולל הכנת חפצים, פעילות עצירה, הכרזה, פעולה אחת בזמן אמת, רשימת “לא”, ושרשרת מה עושים אם הילד לא קם. LH-B2-02 כולל הכנת שעון חול, ההכרזה, שקט בזמן אמת, “לא”, ואז sequence parent-facing אחרי סיום החול.

# 18.1 ParentUnderstanding

`ParentUnderstanding` הוא projection resolved. הוא אינו raw Capability payload ואינו מאפשר ל־UI למפות `B2`, `PROMPT_NEEDED`, Support Levels או `unknown` לטקסט.

```ts
type ParentUnderstanding = {
  knownCapabilityText: ParentFacingText;
  breakdownText: ParentFacingText;
  supportChangeText: ParentFacingText;
  parentRoleLine: ParentFacingText;
};
```

```ts
const ParentUnderstandingSchema = z.object({
  knownCapabilityText: ParentFacingTextSchema,
  breakdownText: ParentFacingTextSchema,
  supportChangeText: ParentFacingTextSchema,
  parentRoleLine: ParentFacingTextSchema,
}).strict();
```

כל ארבעת השדות required ב־slice הנוכחי ונוצרים upstream מתוך `PlanningInstance.capabilitySnapshotRef`, ה־Target וה־resolved content של אותו PlanningInstance.

חוקי source integrity:

- `knownCapabilityText` מציג רק Capability values שנקבעו `yes`; `unknown` אינו מוצג כיכולת.
- `EXECUTES = condition-dependent` מתואר כהתנהגות, לא כיכולת כללית.
- `breakdownText` מתאר מקום observable; hypothesis אינו מוצג כעובדה או כסיבה.
- `supportChangeText` מתאר את הפעולה הקודמת והפעולה הנבדקת עכשיו ללא מספרי מדרגות.
- `parentRoleLine` חייב להיות זהה ל־`PlanningInstance.resolvedParentRoleLine`.
- ה־UI מציג את ארבעת המחרוזות; הוא אינו בונה אותן ואינו מפרש אותן.

---

# 19. FirstPlanProjection

## 19.1 Type

```ts
type FirstPlanProjection = {
  projectionKind:
    "first_plan";

  targetRef: string;

  planningInstanceRef:
    string;

  targetText:
    string;

  parentUnderstanding:
    ParentUnderstanding;

  prepareAhead:
    string[];

  doNow:
    string[];

  doNot:
    string[];

  support:
    ParentSupportPresentation;

  ifNotStart:
    string[];

  guardrailText:
    string | null;                    // v0.11 sync · §4.3 item 4

  safetyStopText:
    string | null;                    // v0.11 sync · §4.3 item 5

  successSignalText:
    string;

  presentationVersion:
    string;
};

```

---

# 19.2 Semantics

### `targetText`

Parent-facing Rendered `היעד`.

לדוגמה בקנוני:

```text
אורי מגיע לדלת אחרי "דלת." אחת. בלי שאת הולכת לשם לפניו.

```

או:

```text
מאיה מגיעה לדלת כשהחול נגמר. בלי מילה שלך.

```

ה־UI אינו בונה את המשפט מתוך Target fields.

### `parentUnderstanding`

ארבעה parent-facing strings resolved לפי §18.1. הבלוק אינו קיים ב־Runtime ואינו נבנה מחדש ב־UI.

### `prepareAhead`

Rendered section של הכנה מראש / `בערב`.

כולל רק resolved setup שקיבל applicability.

Optional setup שאינו applicable אינו נכנס.

### `doNow`

Rendered parent-facing action של התכנית.

אין internal step names.

### `doNot`

Rendered `לא`.

Resolved guardrail רשאי להוסיף restriction שכבר נבחר ב־Planning.

ה־guardrail אינו משנה את המנוף; הוא משנה את מה שההורה עוצר/לא עושה.

### `support`

Canonical ladder presentation של `targetSupportLevel` / planned support relevant לתכנית.

### `ifNotStart`

Rendered escalation chain ב־parent language.

אין:

```text
escalation_1
actual = 4
wait_window

```

יש למשל:

```text
מחכים דקה...
הולכים לדלת ועומדים בשקט...

```

כפי שכבר קיים ב־Rendered Bank.

### `guardrailText`

ה־ResolvedGuardrail parent-facing.

לא מציג את שם הדפוס.

### `successSignalText`

Success Signal מפורש להצגה. הוא חייב להיות זהה בדיוק ל־`PlanningInstance.successSignal` של אותו `planningInstanceRef`; projection builder אינו כותב הסבר חלופי.

---

# 19.3 Schema

```ts
const FirstPlanProjectionSchema =
  z.object({
    projectionKind:
      z.literal("first_plan"),

    targetRef:
      z.string().min(1),

    planningInstanceRef:
      z.string().min(1),

    targetText:
      ParentFacingTextSchema,

    parentUnderstanding:
      ParentUnderstandingSchema,

    prepareAhead:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    doNow:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    doNot:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    support:
      ParentSupportPresentationSchema,

    ifNotStart:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    guardrailText:
      ParentFacingTextSchema.nullable(),          // v0.11 sync

    safetyStopText:
      ParentFacingTextSchema.nullable(),          // v0.11 sync

    successSignalText:
      ParentFacingTextSchema,

    presentationVersion:
      z.string().min(1),
  }).strict();

```

זהו `ZodObject` גם כאשר nested `support` הוא refined schema.

---

# 20. PreDayProjection

## 20.1 Type

```ts
type PreDayProjection = {
  projectionKind:
    "pre_day";

  targetRef: string;

  planningInstanceRef:
    string;

  targetText:
    string;

  parentRoleLine:
    string;

  childPreparationLine:
    string;

  childPreparationApplicability:
    "BEFORE_FIRST_ATTEMPT_FOR_PLANNING_INSTANCE";

  childPreparationRequirement:        // v0.10 · === PlanningInstance.childPreparationRequirement
    | "REQUIRED"
    | "RECOMMENDED";

  prepareAhead:
    string[];

  announcementText:
    string | null;

  inTheMomentText:
    string[];

  doNot:
    string[];

  guardrailText:
    string | null;                    // v0.11 sync · §4.3 item 4

  safetyStopText:
    string | null;                    // v0.11 sync · §4.3 item 5

  support:
    ParentSupportPresentation;

  ifNotStartPreview:
    string[];

  successSignalText:
    string;

  presentationVersion:
    string;
};

```

---

# 20.2 Semantics

Pre-Day הוא compression של אותו Rendered Output.

הוא אינו מפעיל Bank מחדש.

### `targetText`

אותו יעד parent-facing.

### `parentRoleLine`

זהה ל־`PlanningInstance.resolvedParentRoleLine` ולאותו field בתוך `FirstPlanProjection.parentUnderstanding`.

### `childPreparationLine`

זהה ל־`PlanningInstance.resolvedChildPreparationLine`. הוא תוכן immutable מתוך Bank v0.9; אין reconstruction ואין הוספת מספר תרגולים.

### `childPreparationApplicability`

**מתי** ההכנה חלה. ב־slice הנוכחי הערך הקנוני היחיד הוא:

```text
BEFORE_FIRST_ATTEMPT_FOR_PLANNING_INSTANCE
```

הוא מתאר applicability של תוכן, לא professional state ולא Observation.

### `childPreparationRequirement` (v0.10)

**עד כמה** ההכנה מחייבת: `REQUIRED | RECOMMENDED`.
- מקורו ב-Bank: MUST מתורגם ל-`REQUIRED`, ו-SHOULD ל-`RECOMMENDED`.
- הוא זהה ל-`PlanningInstance.childPreparationRequirement`, ו-immutable ב-bundle.
- הוא metadata של presentation ו-gating בלבד:
  - ב-`REQUIRED`, כל עוד `childPreparationPresentationState = NOT_PRESENTED`, `START_RUNTIME_ATTEMPT` לא ב-`allowedNextActions` (§24.2).
  - הוא לא יוצר professional state, Observation, Progress input או completion tracking.
- ה-UI לא מחליט אם לדלג על הכנה. ההחלטה מגיעה מהמנוע, דרך `allowedNextActions`.

אין פיצול של `childPreparationLine` ל־say/rehearsal fields. השדה נשאר resolved block אחד, כפי שמוגדר ב־PRE_DAY_PARENT_CARD_SPEC_v0_5 וב־Bank v0.9.

### `prepareAhead`

מה צריך להיות מוכן מראש.

כאשר `announcementText` הוא non-null:

- `prepareAhead` **אינו חוזר על נוסח ההכרזה עצמו**;
- `prepareAhead` **חייב לכלול שורה parent-facing אחת על קביעות ההכרזה** — שההכרזה נאמרת באותן מילים בכל בוקר;
- שורת הקביעות נגזרת מ־`SETUP-LH-TRANSITION-ANNOUNCEMENT` ואינה נכתבת או מושלמת ב־UI.

כך נשמרת הדרישה המקצועית של E5 — ההכרזה היא אות קבוע שהילד לומד לזהות — בלי להציג את אותו נוסח פעמיים.

### `announcementText`

ההכרזה שנאמרת מראש, אם התכנית כוללת הכרזה קנונית.

ה־field הוא projection של תוכן שכבר נפתר upstream מתוך ה־Planning/Rendered Output. ה־UI אינו מחלץ אותו מתוך `prepareAhead`, אינו מפרק `resolvedSetup` ואינו מנסח אותו מחדש.

ב־slice הנוכחי, כאשר `PlanningInstance.resolvedSetup` כולל את `SETUP-LH-TRANSITION-ANNOUNCEMENT`, `announcementText` חייב להיות non-null ולהכיל את **הנוסח שנאמר בפועל** בלבד, לאחר resolution מלא של `transition_unit`. אם אין רכיב announcement בתכנית עתידית, הערך הוא `null`.

### `inTheMomentText`

המהלך המלא של **"ברגע עצמו"** ב־Pre-Day.

זהו projection מלא של `resolved_move`, מפולח לשורות parent-facing לפי אותו Rendered Output. הוא אינו "הצעד הראשון" בלבד.

ב־slice הנוכחי:

```text
preDay.inTheMomentText
=
firstPlan.doNow
```

ה־UI אינו משלים המתנה, שקט, תנועה או continuation מתוך `ifNotStartPreview`.

### `doNot`

האיסורים הרלוונטיים לתכנית, ללא שכפול של `guardrailText`.

### `guardrailText`

ה־guardrail שנפתר ב־Planning לאותו Parent Pattern.

```text
preDay.guardrailText
=
firstPlan.guardrailText
```

הוא מוצג כשורת restraint נפרדת, ואינו מוכנס מחדש ל־`doNot`.

### `support`

כמה עזרה לתת, בשפה parent-facing.

### `ifNotStartPreview`

הצעד/ים שכבר resolved למקרה שהילד לא מתחיל.

אין recalculation בבוקר.

### `successSignalText`

מה ההורה מסתכל לראות בניסיון הקרוב.

הערך חייב להיות זהה בדיוק ל־`PlanningInstance.successSignal` של אותו `planningInstanceRef`. ה־Projection Builder אינו מפרש, מקצר או מנסח חלופה, וה־UI אינו קורא את ה־PlanningInstance כדי להשלים אותו.

לפני Visual Acceptance, fixtures של ה־slice חייבים להיבדק ידנית גם מבחינת פנייה להורה. כלל הזהות נשמר; אם `PlanningInstance.successSignal` מנוסח בגוף שלישי או כרשומה מקצועית שאינה טבעית להורה, מתקנים את source string עצמו ולא יוצרים success-signal copy שני.

---

# 20.3 Schema

```ts
const PreDayProjectionSchema =
  z.object({
    projectionKind:
      z.literal("pre_day"),

    targetRef:
      z.string().min(1),

    planningInstanceRef:
      z.string().min(1),

    targetText:
      ParentFacingTextSchema,

    parentRoleLine:
      ParentFacingTextSchema,

    childPreparationLine:
      ParentFacingTextSchema,

    childPreparationApplicability:
      z.literal(
        "BEFORE_FIRST_ATTEMPT_FOR_PLANNING_INSTANCE"
      ),

    childPreparationRequirement:      // v0.10
      z.enum(["REQUIRED", "RECOMMENDED"]),

    prepareAhead:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    announcementText:
      ParentFacingTextSchema.nullable(),

    inTheMomentText:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    doNot:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    guardrailText:
      ParentFacingTextSchema.nullable(),          // v0.11 sync

    safetyStopText:
      ParentFacingTextSchema.nullable(),          // v0.11 sync

    support:
      ParentSupportPresentationSchema,

    ifNotStartPreview:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    successSignalText:
      ParentFacingTextSchema,

    presentationVersion:
      z.string().min(1),
  }).strict();

```

---

# 21. RuntimeProjection

## 21.1 Type

```ts
type RuntimeProjection = {
  projectionKind:
    "runtime";

  targetRef: string;

  planningInstanceRef:
    string;

  attemptSessionRef:
    string;

  targetText:
    string;

  actionText:
    string;

  doNot:
    string[];

  support:
    ParentSupportPresentation;

  ifNotStart:
    string[];                         // v0.11 sync · [] only during post_measurement_completion (§4.3 item 10)

  guardrailText:
    string | null;

  safetyStopText:
    string | null;                    // v0.11 sync · §4.3 item 5

  fallbackAvailable:
    boolean;

  presentationVersion:
    string;
};

```

---

# 21.2 Runtime Semantics

Runtime הוא self-contained.

ה־UI אינו צריך להביא שום מידע נוסף.

### `targetText`

יעד קצר parent-facing.

### `actionText`

הפעולה היחידה הנוכחית.

היא distinct מ־Planning `resolvedMove`.

לדוגמה Bank v0.9 ב־LH-B2-02 מנחה בזמן אמת לומר את ההכרזה, להפוך את השעון, ואז לא לומר דבר; לאחר סיום החול ה־next resolved action יכול להיות `"דלת."` פעם אחת.

### `doNot`

רק restrictions שנחוצים בזמן Runtime.

### `support`

כמה עזרה לתת עכשיו.

ה־UI אינו ממפה Support Level.

### `ifNotStart`

הפעולות הבאות שכבר resolved.

זה אינו Runtime decision engine.

ה־Renderer אינו בוחר מתי “לעלות מדרגה”; הוא מציג את content שה־Runtime contract כבר בחר עבור current state.

### `guardrailText`

אם guardrail נדרש בזמן אמת — הוא מגיע resolved.

אם אינו נדרש:

```text
null

```

### `fallbackAvailable`

`true` רק כאשר קיים approved executable fallback source.

אין SOS blocked lookup.

---

# 21.3 Schema

```ts
const RuntimeProjectionSchema =
  z.object({
    projectionKind:
      z.literal("runtime"),

    targetRef:
      z.string().min(1),

    planningInstanceRef:
      z.string().min(1),

    attemptSessionRef:
      z.string().min(1),

    targetText:
      ParentFacingTextSchema,

    actionText:
      ParentFacingTextSchema,

    doNot:
      z.array(
        ParentFacingTextSchema
      ).min(1),

    support:
      ParentSupportPresentationSchema,

    ifNotStart:
      z.array(
        ParentFacingTextSchema
      ),                                          // v0.11 sync · no .min(1); envelope rule §44

    guardrailText:
      ParentFacingTextSchema
        .nullable(),

    safetyStopText:
      ParentFacingTextSchema.nullable(),          // v0.11 sync

    fallbackAvailable:
      z.boolean(),

    presentationVersion:
      z.string().min(1),
  }).strict();

```

---

# 22. PresentationPayload

**v0.10:** נוספו `ParentReflectionProjection` (§24.3) ו-`HomeProjection` (§24.4).
**v0.11 sync:** נוסף `ProgressProjection` (§24.5), כפי שכבר קיים ב-runtime המשוחרר.

```ts
type PresentationPayload =
  | FirstPlanProjection
  | PreDayProjection
  | RuntimeProjection
  | ParentReflectionProjection
  | HomeProjection
  | ProgressProjection;     // v0.11 sync · §24.5
```

```ts
const PresentationPayloadSchema =
  z.discriminatedUnion(
    "projectionKind",
    [
      FirstPlanProjectionSchema,
      PreDayProjectionSchema,
      RuntimeProjectionSchema,
      ParentReflectionProjectionSchema,
      HomeProjectionSchema,
      ProgressProjectionObjectSchema,   // v0.11 sync · §24.5
    ]
  );
```

כל member הוא `ZodObject`. כללי ProgressProjection (§24.5) נאכפים כ-refinement, לא בתוך ה-member.

---

# 23. Presentation Ownership

## UI may

- render strings
- render ordered lists
- render support label
- render support instruction
- choose visual hierarchy
- apply RTL / typography / accessibility

## UI may not

- inspect intervention ID
- import Bank
- import Ladder
- import Safety Gate
- map level → label
- select guardrail
- assemble `ifNotStart`
- convert wait milliseconds to professional next action
- generate missing copy
- resolve placeholders

---

# 24. Projection Construction

Projection builder receives only resolved canonical entities.

Conceptually:

```text
ActiveTarget
+
PlanningInstance
+
canonical Rendered Output
+
ParentSupportPresentation
→ FirstPlanProjection
→ PreDayProjection

```

Runtime:

```text
ActiveTarget
+
PlanningInstance
+
RuntimeAction
+
canonical Rendered Output
+
ParentSupportPresentation
→ RuntimeProjection

```

אין:

```text
projection builder
→ select intervention

```

ואין:

```text
projection builder
→ Bank Template lookup

```

---

# 24.1 Planning Presentation Persistence Lifecycle

`FirstPlanProjection` ו־`PreDayProjection` נוצרים באותה Planning transaction שבה נוצרים `ActiveTarget` ו־`PlanningInstance` נתמכים.

הם אינם מתווספים ל־`PlanningInstance`, אינם Professional Truth, ואינם נוצרים מאוחר יותר ב־UI.

```ts
type PlanningPresentationBundle = {
  planningInstanceRef: string;
  firstPlan: FirstPlanProjection;
  preDay: PreDayProjection;
};

```

```ts
const PlanningPresentationBundleSchema =
  z.object({
    planningInstanceRef:
      z.string().min(1),
    firstPlan:
      FirstPlanProjectionSchema,
    preDay:
      PreDayProjectionSchema,
  }).strict()
  .superRefine((value, ctx) => {
    if (
      value.firstPlan.planningInstanceRef !==
      value.planningInstanceRef
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message:
          "FirstPlanProjection must belong to bundle planningInstanceRef",
      });
    }

    if (
      value.preDay.planningInstanceRef !==
      value.planningInstanceRef
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message:
          "PreDayProjection must belong to bundle planningInstanceRef",
      });
    }

    if (
      value.firstPlan.parentUnderstanding.parentRoleLine !==
      value.preDay.parentRoleLine
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "parentRoleLine"],
        message:
          "First Plan and Pre-Day must carry the same resolved parent role line",
      });
    }

    if (
      value.firstPlan.targetText !==
      value.preDay.targetText
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "targetText"],
        message:
          "First Plan and Pre-Day must carry the same target text",
      });
    }

    if (
      JSON.stringify(value.firstPlan.doNow) !==
      JSON.stringify(value.preDay.inTheMomentText)
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "inTheMomentText"],
        message:
          "Pre-Day inTheMomentText must equal First Plan doNow",
      });
    }

    if (
      value.firstPlan.guardrailText !==
      value.preDay.guardrailText
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "guardrailText"],
        message:
          "First Plan and Pre-Day must carry the same resolved guardrail text",
      });
    }

    if (
      value.firstPlan.successSignalText !==
      value.preDay.successSignalText
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "successSignalText"],
        message:
          "First Plan and Pre-Day must carry the same success signal text",
      });
    }

    if (
      JSON.stringify(value.firstPlan.support) !==
      JSON.stringify(value.preDay.support)
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "support"],
        message:
          "First Plan and Pre-Day must carry the same canonical support presentation",
      });
    }

    if (
      value.preDay.announcementText !== null &&
      value.preDay.prepareAhead.some(
        (line) => line.includes(value.preDay.announcementText)
      )
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "prepareAhead"],
        message:
          "prepareAhead must not duplicate announcementText",
      });
    }

    if (
      value.preDay.announcementText !== null &&
      !value.preDay.prepareAhead.some(
        (line) =>
          line.includes("אותן מילים") ||
          line.includes("מילים קבועות") ||
          line.includes("קבועה")
      )
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "prepareAhead"],
        message:
          "prepareAhead must preserve the canonical announcement-constancy instruction",
      });
    }

    if (
      value.preDay.doNot.some(
        (line) => line === value.preDay.guardrailText
      )
    ) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ["preDay", "doNot"],
        message:
          "doNot must not duplicate guardrailText",
      });
    }
  });

```

Implementation/Application state מוסיף:

```ts
projectionsByPlanningInstanceRef:
  Record<
    string,
    PlanningPresentationBundle
  >;

```

Successful Planning Resolution:

```text
resolve Planning Instance
→ create Active Target
→ create Planning Instance
→ create FirstPlanProjection
→ create PreDayProjection
→ validate all
→ store immutable presentation bundle
→ commit atomically

```

ה־transaction אינו commit אם אחד מאלה נכשל: `ActiveTarget`, `PlanningInstance`, `FirstPlanProjection`, `PreDayProjection`, bundle ref integrity, `capabilitySnapshotRef` integrity, Parent Understanding source integrity, First Plan Success Signal equality, Pre-Day Success Signal equality, Pre-Day announcement source integrity או parent-facing placeholder validation.

כאשר `PLANNING_RESOLVED` מוחזר:

```text
presentation = bundle.firstPlan

```

פתיחת Pre-Day נעשית כך:

```text
activePlanningInstanceRef
→ projectionsByPlanningInstanceRef[ref]
→ preDay

```

אין Bank lookup, reconstruction מ־Planning fields, parsing של FirstPlanProjection, command חדש או Engine call חדש להרכבת copy.

ה־bundle immutable. ב־ADJUST מוצלח ה־bundle הישן נשמר, וה־PlanningInstance החדש מקבל bundle חדש; אין overwrite של presentation history.

`RuntimeProjection` אינו נשמר ב־Planning bundle. הוא נוצר רק ב־`RUNTIME_ACTION_READY`, משום שהוא תלוי ב־current runtime action, ב־`attemptSessionRef` וב־runtime state.

---

# 24.2 Child Preparation: Requirement ו-Presentation State (v0.10)

**מחליף את** "24.2 Child Preparation Visibility — Application-derived" של v0.9.

ה-bundle נשאר immutable. `childPreparationLine`, `childPreparationApplicability` (`BEFORE_FIRST_ATTEMPT_FOR_PLANNING_INSTANCE`) ו-`childPreparationRequirement` (`REQUIRED | RECOMMENDED`) לא משתנים אחרי Planning.

**הנראות נקבעת במנוע, לא ב-Application.**

```ts
type ChildPreparationPresentationState = "NOT_PRESENTED" | "PRESENTED";
// engine-owned, per PlanningInstance
```

**כללים:**
1. **זמינות המשטח:** משטח הכנת הילד זמין כש-applicationState = PLAN_READY, ו**אין AttemptSession** ל-PlanningInstance הפעיל.
2. **ברירת מחדל:** כל PlanningInstance חדש מתחיל ב-`NOT_PRESENTED`. PlanningInstance חדש נוצר רק דרך אחד משני מסלולים:
   - `TARGET_PROPOSED + RESOLVE_PLANNING → planning_resolved → PLAN_READY`
   - `REPLANNING + REPLAN_AFTER_ADJUST → planning_resolved → PLAN_READY`
3. **המעבר ל-`PRESENTED`:** `RECORD_CHILD_PREPARATION_PRESENTED { planningInstanceRef }` הוא command קנוני שמשנה מצב.
   - הוא מעביר ל-`PRESENTED`, ומחזיר `child_preparation_presented`.
   - הוא idempotent, ואין חזרה ל-`NOT_PRESENTED` באותו PlanningInstance.
   - ה-Application רשאית להפעיל אותו **אוטומטית** כשהמשטח מוצג. המצב עצמו משתנה במנוע.
4. **`allowedNextActions`:** `{ id: "RECORD_CHILD_PREPARATION_PRESENTED", kind: "command" }` מופיע רק ב-PLAN_READY, רק כשאין AttemptSession ל-PlanningInstance, ורק ב-`NOT_PRESENTED`. ה-renderer לא מציג אותו ככפתור.
5. **Gating:** כש-`childPreparationRequirement = REQUIRED` וה-state הוא `NOT_PRESENTED`, `START_RUNTIME_ATTEMPT` **לא** ב-`allowedNextActions`. ב-`RECOMMENDED` אין gating.
6. **הפרדה מ-H1/H2:** H1 ו-H2 (§24.4) נקבעים לפי קיום AttemptSession, לא לפי presentation state.

**מה הוסר:**
- `PreDayApplicationView.childPreparationVisible` ו-`PreDayApplicationView` הוסרו.
- ה-Application לא גוזרת נראות ולא סופרת ניסיונות.

**presentation state אינו completion:**
- הכנת הילד אינה Target Attempt, Capability Probe, Observation או Progress input.
- אין מדידת ביצוע ההכנה, אין checkbox, אין מספר תרגולים, ואין invalidation אם ההכנה לא בוצעה.
- מקור: PRE_DAY_PARENT_CARD_SPEC v0.5 §4.

---

# 24.3 ParentReflectionProjection (v0.10)

**שכבת presentation.** זה **לא** copy של החלטת מנוע.

```ts
type ParentReflectionProjection = {
  projectionKind: "parent_reflection";
  reflectionKind: "attempt" | "progress" | "report_unresolved";
  sourceRef: string;                  // observationRef | progressSnapshotRef | pendingCheckinRef
  text: ParentFacingText;
  items: ParentFacingText[];
  bankVersion: string;                // e.g. "PARENT_LEARNING_LH_B2@0.3"
};

const ParentReflectionProjectionSchema = z.object({
  projectionKind: z.literal("parent_reflection"),
  reflectionKind: z.enum(["attempt", "progress", "report_unresolved"]),
  sourceRef: z.string().min(1),
  text: ParentFacingTextSchema,
  items: z.array(ParentFacingTextSchema),
  bankVersion: z.string().min(1),
}).strict();
```

**כללים:**
- **איך הוא נבנה:** presentation builder בצד ה-adapter מרכיב אותו משדות קנוניים (Observation, ProgressSnapshot, NoObservation) ומה-Parent-Learning Bank המאושר.
- **איפה הוא יושב:** ב-`envelope.presentation`, ולא ב-`canonicalResult`. אף החלטת מנוע לא קוראת אותו.
- **`sourceRef`:** חייב להתאים ל-`canonicalResult` של אותה תשובה.
- **Null:** כשאין שורה מאושרת (למשל שתי סיבות ה-ADJUST שב-SOT_CONFLICT), `presentation` הוא null.
- **§57:** ה-UI לא ממפה intervention, support level או cue לטקסט.
- **Persistence:** לא נשמר. ב-RESUME הוא נבנה מחדש מאותם מקורות קנוניים.

---

# 24.4 HomeProjection (v0.10)

```ts
type HomeProjection = {
  projectionKind: "home";
  homeCard: "H1" | "H2" | "H3" | "H4";
  targetRef: string;
  planningInstanceRef: string;
  statusText: ParentFacingText;
  targetText: ParentFacingText;
  parentRoleLine: ParentFacingText;
  lastReflection: ParentReflectionProjection | null;
  childPreparationRequirement: "REQUIRED" | "RECOMMENDED";
  childPreparationPresentationState: "NOT_PRESENTED" | "PRESENTED";
  primaryActionId: AllowedNextActionId;
  runtime: RuntimeProjection | null;
  presentationVersion: string;
};
```

`HomeProjectionSchema` הוא `z.object` strict עם אותם שדות.

**הוא מוחזר** כ-`envelope.presentation` של `continuity_result` **אם ורק אם** `requiredApplicationState` הוא אחד מ-PLAN_READY, ATTEMPT_IN_PROGRESS או PENDING_CHECKIN.

| homeCard | applicationState | תנאי | `statusText` | `primaryActionId` | `runtime` |
|---|---|---|---|---|---|
| H1 | PLAN_READY | אין AttemptSession ל-PlanningInstance | "היום יש תכנית חדשה" | `VIEW_PLAN` אם REQUIRED ו-NOT_PRESENTED, אחרת `START_RUNTIME_ATTEMPT` | null |
| H2 | PLAN_READY | יש AttemptSession | "היום ממשיכים באותו צעד" | `START_RUNTIME_ATTEMPT` | null |
| H3 | ATTEMPT_IN_PROGRESS | — | "הניסיון עדיין פתוח." | `END_RUNTIME_ATTEMPT` | **חובה**, עם `attemptSessionRef` של ה-session הפתוח |
| H4 | PENDING_CHECKIN | — | "צריך דיווח מהניסיון האחרון" | `SUBMIT_CHECKIN` | null |

**Invariants:**
- `primaryActionId` חייב להיות ב-`allowedNextActions`.
- `targetText` ו-`parentRoleLine` שווים לאלה ב-PreDayProjection של אותו PlanningInstance.
- `lastReflection` הוא ה-ParentReflectionProjection האחרון שנבנה על אותו PlanningInstance, או null. הוא לא עובר בין PlanningInstances.
- ב-LEARNING_RESULT, TARGET_RECHECK, REPLANNING, COVERAGE_GAP, HOLDING ו-SAFETY_REPLACEMENT, `presentation` של `continuity_result` הוא null.

**H3:**
- "סיימתי" שולח `END_RUNTIME_ATTEMPT` עם `completionKind: "user_ended"`.
- "עוד לא" מציג את `runtime`, בלי command.

---

# 24.5 Target Support Actions ו-ProgressProjection (v0.10 PR-F)

> **Ratified 03.10.2026 — SEMANTICS ONLY** (Main CT governance). עקבי עם REV3 הקנוני, עם `4499671` ועם אמת Progress / Product שהתקבלה. מחרוזות הצגה אינן חלק מהאשרור. לא אישור היסטורי.

**TargetProposal / ActiveTarget** מקבלים שני שדות:

```ts
startingSupportAction: ParentFacingText;
targetSupportAction: ParentFacingText;
```

- בבעלות המנוע וה-template. נפתרים **לפי intervention_id** כשה-Target נוצר, ב-variant הניטרלי (המנוע לא יודע זהות).
- לא משתנים לאורך חיי ה-Target. ADJUST לא משנה אותם.
- לא נגזרים מרמת עזרה מספרית ולא מפוענחים מתוך targetText. אין מיפוי level→text ב-Application או ב-UI.
- Identity resolution עובר דרך ה-pipeline המאושר. `[שם]` לא מגיע ל-ParentFacingText.
- רציפות LH: `LH-B2-01.targetSupportAction` ו-`LH-B2-02.startingSupportAction` מייצגים אותו מצב עזרה: „דלת” מילולית אחת, בלי תנועה של ההורה. הבדיקה היא על המיפוי, לא על שוויון מחרוזות.

```ts
type ProgressSupportPoint = { actionText: ParentFacingText };

type ProgressProjection = {
  projectionKind: "progress";
  startingSupport: ProgressSupportPoint;
  currentSupport: ProgressSupportPoint | null;
  childNowLine: ParentFacingText | null;
  parentStoppedLine: ParentFacingText | null;
  progressDecision: "KEEP" | "ADJUST" | "FADE";
  progressDecisionLabel: ParentFacingText;
  fadePresentation: { title: ParentFacingText; body: ParentFacingText; primaryActionId: "RECHECK_AFTER_FADE" } | null;
  reflection: ParentReflectionProjection | null;   // KEEP / ADJUST only; FADE → null
};
```

**כללים:**
- ה-`presentation` של envelope שה-`canonicalResult` שלו הוא `progress_result` הוא `ProgressProjection | null` (§43). ל-`ProgressResult` עצמו אין שדה presentation (§40). הכלל "ProgressProjection מוחזר רק עם `progress_result`" ו-`progressDecision = ProgressSnapshot.decision` נאכפים ב-envelope refinement (§44, E3–E5).
- אין Active Target ל-`progress.targetRef` → אין ProgressProjection.
- **`progressDecisionLabel`:** התווית המאושרת של `progressDecision`. **החוזה אינו מגדיר את המחרוזות ואינו נועל אותן.**
  - COPY OWNER: VOICE / PRODUCT PRESENTATION.
  - RELEASED PRESENTATION VALUE (`4499671`; לא אמת Voice קנונית): KEEP „ממשיכים ככה” · ADJUST „משנים את התכנית” · FADE „מפחיתים עזרה”.
  - **RUNTIME VALIDATION: CURRENTLY EXISTS.** ה-schema המשוחרר (`refineProgressProjection`) דוחה `progressDecisionLabel` שאינו שווה לערך המשוחרר של ההחלטה, ו-FADE `title` / `body` שאינם שווים לערכים המשוחררים.
  - **COPY OWNER: VOICE / PRODUCT PRESENTATION.** הבדיקה ב-runtime אינה העברת בעלות על ה-copy למנוע. הוצאת בדיקת ה-copy מה-Contract היא החלטת Code / Governance עתידית ונפרדת. אין שינוי קוד עכשיו.
  - אותו מצב קיים, כרישום בלבד וללא שינוי, ב: `HomeProjection.statusText` (§24.4), תוויות והוראות ParentSupportPresentation (§17), טקסטים סטטיים של Safety (§33–§34).
  - **ADJUST: SOURCE TRACE REQUIRED: YES.** ב-v0.10 (עותק repo) נכתב „צריך להתאים את התכנית” (commit `5f874b6`); ב-Production „משנים את התכנית” (commit `6273b1c`). התווית המשוחררת נשארת ללא שינוי בשלב זה.
- **KEEP / ADJUST:** רק `startingSupport` = `startingSupportAction` של ה-Target. `reflection` הוא ה-progress reflection הקנוני של אותו ProgressSnapshot (`sourceRef = progressSnapshotRef`), או null אם אין שורה מאושרת. כל השאר null.
- **FADE:** `currentSupport` = `targetSupportAction` של ה-Target שהתייצב. לא actual של Observation, לא planned support, לא ספירת ניסיונות. `childNowLine` ו-`parentStoppedLine` מגיעים משורות FADE המאושרות של ה-intervention. `fadePresentation` = `{ title, body }` מאושרים של הצגת FADE + `primaryActionId = RECHECK_AFTER_FADE`. COPY OWNER של title / body: VOICE / PRODUCT PRESENTATION; RELEASED PRESENTATION VALUE (`4499671`; לא אמת Voice קנונית): „הצעד הזה התייצב” / „עכשיו בודקים איזו עזרה מתאימה הלאה.”. אם חסר מקור אחד, ה-ProgressProjection כולו null. אין projection חלקי ואין fallback.
- אין ב-ProgressProjection רמה מספרית, אחוז, ציון, רצף, ספירת ניסיונות, סולם מלא, Target הבא או רמת העזרה הבאה.
- **בלעדיות FADE:** ב-FADE `reflection` תמיד null, וה-FADE reflection לא מוצג יחד עם ה-ProgressProjection. ב-KEEP / ADJUST ה-reflection מוצג בתוך אותו משטח. מקור ה-reflection נשמר כהיסטוריה (`lastReflection` ב-Home).
- אחרי FADE: `RECHECK_AFTER_FADE` → recheck קנוני. Target חדש מופיע רק אחרי Planning חדש. אין ירושה של copy מה-Target הקודם.
  - **OPEN — OD-P1-09** (BLOCKED FOR IMPLEMENTATION). **Classification: PRODUCT ROUTING / COVERAGE GAP — NOT A REV3 SEMANTIC CONTRADICTION.** מסלול ההמשך אחרי FADE לא הוגדר, והסעיף אינו פותר זאת. אין תיקון Code עדיין. ב-`4499671` יש שני מסלולים נפרדים:
    - **PUBLIC PARENT PATH** (המסלול שההורה רואה; ממצא ה-runtime הסמכותי של Parent Experience; RUNTIME-VERIFIED, RT-01, `390/A38` → `390/A39`): מסך FADE → ההורה לוחץ על ה-CTA של ה-recheck → אין תרחיש downstream ציבורי ל-recheck (`PUBLIC_DOWNSTREAM_SCENARIO_IDS`) → `technical_error` → המצב נשאר `TARGET_RECHECK`, אפס פעולות (dead end).
    - **FIXTURE / DEMO PATH** (SOURCE-INSPECTED): F20 → F21 → `TARGET_PROPOSED`. כאן `RECHECK_AFTER_FADE` מצליח (PROCEED, `allowedNextActions = [RESOLVE_PLANNING]`). הכשל מגיע בשלב הבא, פתרון ה-Planning שאחריו.

---

# 25. ParentSupportPresentation Source Integrity

לכל projection:

```text
projection.support.level

```

חייב להתאים ל־canonical planned/target support level שממנו נוצר ה־projection.

ואז:

```text
level
→ canonical Ladder presentation

```

באמצעות mapping אחד בלבד.

ה־Ladder מגדיר שהסולם מודד כמה ההורה עוזר בזמן הביצוע, ולא כמה האפליקציה מסבירה או איך הבית מסודר.

לכן `ParentSupportPresentation` אינו מחליף Setup או Guardrail.

---

# 26. Placeholder Prohibition

Parent-facing projections חייבים להיות fully resolved.

אסור:

```text
"עוד [transition_unit] אחת ואז דלת"

```

מותר:

```text
"עוד קובייה אחת ואז דלת."

```

או:

```text
"עוד עמוד אחד ואז דלת. כשהחול נגמר."

```

ה־Bank עצמו מגדיר ש־`transition_unit` נפתר מתוך closed selection לפני Rendered Output.

---

# 27. Internal Label Prohibition

Projection אינו מכיל fields מסוג:

```text
interventionId
bottleneck
startingSupportLevel
targetSupportLevel
escalationNumber
waitWindowMs
validity
parentPattern

```

החריג היחיד:

```text
ParentSupportPresentation.level

```

משום שהוא חלק מפורש מה־public presentation contract.

גם שם ה־UI אינו מציג בהכרח `"מדרגה 3"`; הוא מקבל:

```text
level: 3
label: "אומרים פעם אחת"
instruction: ...

```

---

# 28. Observation Model

**v0.11 sync:** מסונכרן ל-OBSERVATION_SCHEMA_v0_10 ול-REV3 (§1, §5, §8, §13, §14) כפי שוחרר ב-`4499671`. **`skipped_setup` הוסר** (REV3 §14; שינוי שובר מכוון, בלי מיפוי מערכים ישנים). הקשר והכנה מיוצגים רק דרך `contextFacts`.

```ts
type ObservationBase = {
  observationRef: string;

  plannedSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  actualSupportLevel:
    1 | 2 | 3 | 4 | 5 | 6;

  successSignalMet:
    | "yes"
    | "no";

  breakdownObserved?:
    | "start"
    | "mid"
    | "end"
    | "quality_execution";

  parentHeldPlan:
    | "held"
    | "not_held";

  notHeldReason?:
    NotHeldReason;                    // early_entry | repeated_before_wait | took_over_before_wait
                                      // | unplanned_takeover_after_wait | malformed_step_after_wait (§9.1)

  timestamp: string;
  schemaVersion: string;
};

```

```ts
type TargetObservation =
  ObservationBase & {
    attemptKind: "target";
    targetRef: string;

    attemptValidity:                  // valid = usable as evidence about the child (Observation v0.8+)
      | "valid"
      | "invalid";

    invalidReason?:
      | "runtime_fallback"
      | "constrained"
      | "parent_unmeasurable"         // V4 · reset · V7 · C2/V6c + qualifying G5 fact
      | "cue_not_received"            // v0.11 sync · C2 (V6b)
      | "planned_change_response"     // v0.11 sync · C1 (§3ג)
      | "opportunity_unknown";        // v0.11 sync · V6c

    practiceAsPlanned?:               // v0.11 sync · G2
      PracticeAsPlanned;

    contextFacts?:                    // v0.11 sync · G2a, exactly as reported
      ContextFactId[];

    cueResetAfterSeen?: true;         // v0.11 sync · LH-B2-02 only, never with a C2 fact
    ranDifferentPlan?: true;          // v0.11 sync · V7
  };

```

```ts
type EvidenceObservation =
  ObservationBase & {
    attemptKind: "evidence";

    evidenceType:
      | "capability_probe"
      | "environment_check"
      | "bottleneck_observation";

    targetRef: null;

    attemptValidity:
      "invalid";

    invalidReason:
      "evidence_only";
  };

```

**Common refinements (released):**
- `held` → אין `notHeldReason`, אין `cueResetAfterSeen`, אין `ranDifferentPlan`.
- `not_held` → בדיוק אחד מ: `notHeldReason` · `cueResetAfterSeen` · `ranDifferentPlan`.
- `breakdownObserved` רק כש-`successSignalMet = no`.

**Target-only refinements (released):**
- `valid` → אין `invalidReason`; `invalid` → `invalidReason` חובה.
- `contextFacts`: ייחודיים; `unknown` לבד; `child_chose_other_garment` ו-`clothes_not_prepared` לא יחד; לא C2 יחד עם `cueResetAfterSeen`.
- `contextFacts` לא ריק ⇒ `practiceAsPlanned = no`.
- `cueResetAfterSeen` ⇒ `invalidReason = parent_unmeasurable`.
- `notHeldReason = malformed_step_after_wait` ⇒ `actualSupportLevel ≠ plannedSupportLevel` (הגיע escalation step).

**Evidence-usability derivation (REV3 §5; first match wins; engine-owned):**
1. `runtime_fallback` → invalid.
2. `constrained` → invalid.
3. fact של C1 → invalid `planned_change_response`, גם עם fact מזכה ב-G5.
4. fact מזכה ב-G5 (`repeated_before_wait` / `early_entry` / `took_over_before_wait` / V7 / reset) → invalid `parent_unmeasurable`.
5. fact של C2 → invalid `cue_not_received`.
6. G2 = unknown, או G2a = [`unknown`] → invalid `opportunity_unknown`.
7. אחרת → valid (כולל V6a בלבד, V5, V5b, V5c).

נדחה לפני הגזירה: C1 + C2; `cueResetAfterSeen` + C2.

**Observation creation (REV3 §8, §9):** G1 = yes ודוח שלם → Observation target אחת שנבנית מהתשובות. G1 = no → אין Observation (`practice_not_occurred`, §42). דוח לא מספיק → אין Observation. ביום C2, הפעלה מחדש של הטיימר היא restart ולא reset: לא נרשם `cueResetAfterSeen` ו-`parentHeldPlan` נקבע רק משורת G5 שנבחרה.

---

# 29. CanonicalEffects

ה־single representation של v0.7 נשמר:

```ts
type CanonicalEffects = {
  createdEvidenceObservation:
    EvidenceObservation;
};

```

```ts
const CanonicalEffectsSchema = z.object({
  createdEvidenceObservation:
    EvidenceObservationSchema,
}).strict();

```

אם אין effect:

```text
effects = null

```

אסור:

```text
effects = {
  createdEvidenceObservation: null
}

```

---

# 30. Progress

**v0.11 sync:** מסונכרן ל-PROGRESS_KEEP_ADJUST_FADE_v0_3_3 ול-REV3 §11, §12, §12a, §15 כפי שוחרר ב-`4499671`. ההחלטות KEEP / ADJUST / FADE וסיבותיהן לא השתנו.

```ts
type ProgressSnapshot =
  | {
      progressSnapshotRef: string;
      targetRef: string;
      sourceObservationRefs: string[];   // valid target Observations only (may be empty)
      decision: "KEEP";
      reason:
        | "insufficient_evidence"
        | "mixed";
      belowTargetFlag: boolean;
      calculatedAt: string;
      progressConfigVersion: string;
    }

  | {
      progressSnapshotRef: string;
      targetRef: string;
      sourceObservationRefs: string[];   // valid target Observations only (may be empty)
      decision: "ADJUST";
      reason:
        | "support_insufficient"
        | "breakdown_shifted"
        | "capability_recheck"
        | "parent_execution_block";
      belowTargetFlag: boolean;
      calculatedAt: string;
      progressConfigVersion: string;
      ruleFiveWindowRefs?: string[];     // v0.11 sync · 1..4 · exactly on ADJUST(parent_execution_block)
    }

  | {
      progressSnapshotRef: string;
      targetRef: string;
      sourceObservationRefs: string[];   // valid target Observations only
      decision: "FADE";
      reason: null;
      belowTargetFlag: boolean;
      calculatedAt: string;
      progressConfigVersion: string;
    };

```

**Provenance rules (REV3 §12a, §15):**
- `sourceObservationRefs` = provenance של ראיית Progress: target Observations עם `attemptValidity = valid` בלבד. אף ref לא invalid.
- `ruleFiveWindowRefs` קיים **רק** כש-`decision = ADJUST` ו-`reason = parent_execution_block`, ואסור בכל snapshot אחר (schema refinement). תוכן: עד 4 הרשומות האחרונות שזכאיות ל-Rule 5, לפי סדר זמן. מספר הרשומות `parent_unmeasurable` בו הוא המונה של ההחלטה (לפחות 3).
- רשומת C1 (`planned_change_response`) לעולם לא ב-`ruleFiveWindowRefs`. רשומת C2 מופיעה שם רק כ-`parent_unmeasurable` (C2 + fact מזכה ב-G5). רשומות שקופות ל-Rule 5 לא מופיעות באף שדה.

**Real calculation (Progress v0.3.3 §3–§7):**
- Window: 4 הרשומות ה-valid האחרונות; מינימום 4.
- FADE: לפחות 3 מתוך 4 at-target, והאחרונה at-target.
- ADJUST: לפחות 3 מתוך 4 off-target, והאחרונה off-target. סיבות: `support_insufficient` / `breakdown_shifted` / `capability_recheck` (ADJUST שני על אותו Target).
- KEEP: `insufficient_evidence` / `mixed`.
- Staleness: יותר מ-14 ימים קלנדריים בלי רשומה valid → ה-Window מתרוקן.

**Rule 5 (Progress v0.3.3 §5; REV3 §12) — מנגנון נפרד:**

| רשומה | `invalidReason` | slot | numerator |
|---|---|---|---|
| valid (V5, V5b, V5c, V6a, V8) | — | 1 | 0 |
| V4 · reset (LH-B2-02, לא ביום C2) · V7 · V6c/C2 + fact מזכה ב-G5 | `parent_unmeasurable` | 1 | 1 |
| C1 (עם או בלי fact מזכה ב-G5) | `planned_change_response` | 0 (שקוף) | 0 |
| C2 בלי fact מזכה ב-G5 | `cue_not_received` | 0 (שקוף) | 0 |
| V6c בלי fact מזכה ב-G5 | `opportunity_unknown` | 0 (שקוף) | 0 |
| `runtime_fallback` / `constrained` / evidence | כשמם | 0 (שקוף) | 0 |

- חלון: 4 הרשומות האחרונות שזכאיות ל-Rule 5 על ה-Target הפעיל. סף: לפחות 3 מתוך 4. פלט: ADJUST(`parent_execution_block`).
- snapshot נוצר ביום non-evidence רק כש-Rule 5 יורה (REV3 §15).

**Measured attempt (REV3 §11) — נגזר, לא נשמר:**
- הגדרה: מספר ה-target Observations עם `attemptValidity = valid` על ה-PlanningInstance הפעיל.
- לא מתקדם ב: יום no-practice, יום non-evidence (כולל V4, reset ו-V7), דוח insufficient או abandoned, ניסיון שנקטע ב-Safety.
- **נפרד מ-Rule 5:** לרשומה יכולים להיות measured attempt 0 ו-Rule 5 slot 1 / numerator 1. נפרד גם מה-Progress Window.

---

# 31. SafetyAttemptEffect

ללא שינוי.

```ts
type SafetyAttemptEffect =
  | {
      kind:
        "NO_ACTIVE_ATTEMPT";

      observationRef:
        null;
    }

  | {
      kind:
        "INTERRUPTED_ATTEMPT_RECORDED_INVALID";

      attemptSessionRef:
        string;

      observationRef:
        string;

      attemptValidity:
        "invalid";

      invalidReason:
        "runtime_fallback";
    }

  | {
      kind:
        "POST_OBSERVATION_PRESERVE";

      observationRef:
        string;
    };

```

---

# 32. SafetyResumePolicy

ללא שינוי.

```ts
type SafetyResumePolicy =
  | {
      kind:
        "RECOVERABLE";

      nextApplicationState:
        | "NO_ACTIVE_TARGET"
        | "ASSESSING"
        | "HOLDING"
        | "PLAN_READY"
        | "PENDING_CHECKIN"
        | "LEARNING_RESULT"
        | "TARGET_RECHECK"
        | "COVERAGE_GAP";
    }

  | {
      kind:
        "SESSION_TERMINAL";

      nextApplicationState:
        null;
    };

```

---

# 33. Safety Replacement Content Availability

מבוטלת הטענה שלפיה לכל `stopMode` יש full parent-renderable text בתוך `SAFETY_GATE_MASTER_SPEC_v1_0`.

```ts
type SafetyReplacementContentAvailability =
  | "STATIC_LITERAL_AVAILABLE"
  | "EXTERNAL_APPROVED_CONTENT_REQUIRED";

```

# 33.1 SafetyReplacementOutput

```ts
type SafetyReplacementOutput = {
  ref: string;
  text: string;
};

```

```ts
const SafetyReplacementOutputSchema =
  z.object({
    ref: z.string().min(1),
    text: ParentFacingTextSchema,
  }).strict();

```

Object זה קיים רק כאשר `contentAvailability = STATIC_LITERAL_AVAILABLE`.

# 33.2 SafetyReplacementContent

```ts
type SafetyReplacementContent =
  | {
      contentAvailability:
        "STATIC_LITERAL_AVAILABLE";
      replacementOutput:
        SafetyReplacementOutput;
    }
  | {
      contentAvailability:
        "EXTERNAL_APPROVED_CONTENT_REQUIRED";
      replacementOutput:
        null;
    };

```

```ts
const SafetyReplacementContentSchema =
  z.discriminatedUnion(
    "contentAvailability",
    [
      z.object({
        contentAvailability:
          z.literal("STATIC_LITERAL_AVAILABLE"),
        replacementOutput:
          SafetyReplacementOutputSchema,
      }).strict(),

      z.object({
        contentAvailability:
          z.literal("EXTERNAL_APPROVED_CONTENT_REQUIRED"),
        replacementOutput:
          z.null(),
      }).strict(),
    ]
  );

```

# 34. SafetyReplacement

```ts
type SafetyReplacement = {
  safetyReplacementRef: string;

  decision:
    | "STOP"
    | "RUNTIME_FALLBACK"
    | "KEEP_SUPPORT";

  decisionReason:
    | "safety_hold"
    | null;

  stopMode:
    | "SOS_SOMATIC_ONLY"
    | "SILENCE"
    | "STATIC_FALLBACK"
    | "R5B"
    | "CHILD_OVERRIDE_1"
    | "HUMAN_ESCALATION"
    | "SESSION_TERMINATION";

  content:
    SafetyReplacementContent;

  runtimeFallback:
    RuntimeFallbackReference | null;

  attemptEffect:
    SafetyAttemptEffect;

  resumePolicy:
    SafetyResumePolicy;

  safetyVersion: string;
};

```

```ts
const SafetyReplacementSchema = z.object({
  safetyReplacementRef:
    z.string().min(1),
  decision:
    z.enum([
      "STOP",
      "RUNTIME_FALLBACK",
      "KEEP_SUPPORT",
    ]),
  decisionReason:
    z.literal("safety_hold").nullable(),
  stopMode:
    z.enum([
      "SOS_SOMATIC_ONLY",
      "SILENCE",
      "STATIC_FALLBACK",
      "R5B",
      "CHILD_OVERRIDE_1",
      "HUMAN_ESCALATION",
      "SESSION_TERMINATION",
    ]),
  content:
    SafetyReplacementContentSchema,
  runtimeFallback:
    RuntimeFallbackReferenceSchema.nullable(),
  attemptEffect:
    SafetyAttemptEffectSchema,
  resumePolicy:
    SafetyResumePolicySchema,
  safetyVersion:
    z.string().min(1),
}).strict();

```

# 35. Safety Content Classification and Rendering

ל־Build 07P / Demo:

| stopMode | Content status |
| --- | --- |
| `SILENCE` | `STATIC_LITERAL_AVAILABLE` |
| `CHILD_OVERRIDE_1` | `STATIC_LITERAL_AVAILABLE` |
| `HUMAN_ESCALATION` | `STATIC_LITERAL_AVAILABLE` |
| `SESSION_TERMINATION` | `STATIC_LITERAL_AVAILABLE` |
| `SOS_SOMATIC_ONLY` | `EXTERNAL_APPROVED_CONTENT_REQUIRED` |
| `R5B` | `EXTERNAL_APPROVED_CONTENT_REQUIRED` |
| `STATIC_FALLBACK` | `EXTERNAL_APPROVED_CONTENT_REQUIRED` |

אין שינוי ב־Safety Decision mapping. הסיווג עוסק רק בזמינות full parent-renderable content.

כאשר `contentAvailability = STATIC_LITERAL_AVAILABLE`, חובה ש־`replacementOutput.ref` ו־`replacementOutput.text` אינם ריקים, וה־text הוא ה־static literal הקנוני ממקור Safety המאושר. ה־UI מציג `replacement.content.replacementOutput.text`.

כאשר `contentAvailability = EXTERNAL_APPROVED_CONTENT_REQUIRED`, `replacementOutput = null`; אין parent Safety screen ב־07P, placeholder, generated copy, generic substitute, somatic seed מומצא, substitution ידני או invented static fallback.

Safety גובר על Intervention rendering וה־normal Plan/Runtime presentation מודחק.

# 36. Blocked SOS Status

`SOS_12_Nodes_Bank_v1_0` נשאר `BLOCKED / REFERENCE ONLY`.

הוא אינו executable content source ואינו יכול להפוך `EXTERNAL_APPROVED_CONTENT_REQUIRED` ל־`STATIC_LITERAL_AVAILABLE`.

---

# 37. CoverageGap (v0.10)

**CoverageGap** הוא הקונספט הקנוני. `bank` הוא phase, לא שם הקונספט.

```ts
type CoverageGap =
  | {
      phase: "scope_resolution";
      gapRef: string;
      scope: DomainScope;              // unclassified | task_classified
      targetProposalRef: null;
      existingTargetRef: null;
      resolvedContextRef: string;
    }
  | {
      phase: "target_creation";
      gapRef: string;
      scope: DomainScope;              // target_resolved
      targetProposalRef: string;
      existingTargetRef: null;
      resolvedContextRef: string;
      missingAsset: string;
      bankVersion: string;
    }
  | {
      phase: "adjust_replanning";
      gapRef: string;
      scope: DomainScope;              // target_resolved
      targetProposalRef: null;
      existingTargetRef: string;
      resolvedContextRef: string;
      missingAsset: string;
      bankVersion: string;
    };

const CoverageGapSchema = z.discriminatedUnion("phase", [ /* three strict objects as above */ ]);
```

## 37.1 מצבי מקור (נעול)

| phase | מצב מקור | אירוע | scope |
|---|---|---|---|
| `scope_resolution` | **ASSESSING**, או **COVERAGE_GAP** רק כתוצאה של `SUBMIT_SCENE` חדש (§37.2) | classification. המנוע לא יכול לייצר TargetProposal תקף מקצועית בלי להמציא scope | `unclassified` / `task_classified` |
| `target_creation` | **TARGET_PROPOSED** | `RESOLVE_PLANNING`: TargetProposal תקף ואין template | `target_resolved` |
| `adjust_replanning` | **REPLANNING** | `REPLAN_AFTER_ADJUST`: אין template חלופי | `target_resolved` |

phase ממצב מקור אחר מחזיר `INVARIANT_VIOLATION`, בלי commit.

**`scope_resolution`:**
- **dressing / bag_items כשהמנוע לא יכול לייצר TargetProposal תקף מקצועית** (למשל אין evidence ל-bottleneck ולמעבר של K1–K5): scope `{morning, <task>, null, null}`.
- **תיאור שלא ניתן לייצוג ב-Task enum** (שיניים, התעוררות): scope `{morning, null, null, null}`. **לא ממציאים task.**
- **אין clarification** רק בגלל חוסר כיסוי במוצר.

## 37.2 `SUBMIT_SCENE` מתוך COVERAGE_GAP (v0.10, D2)

- **חוקי רק** כש-phase של ה-gap הפעיל הוא `scope_resolution` או `target_creation`. אז `allowedNextActions = [SUBMIT_SCENE]` (גם ב-continuity).
- **לא חוקי** מ-`adjust_replanning`: ה-Target הפעיל נשמר ולא נסגר, `allowedNextActions = []`.
- כל command אחר שמשנה מצב מתוך COVERAGE_GAP מחזיר `INVARIANT_VIOLATION`, בלי commit.
- `CommandContext.scope = UNCLASSIFIED_MORNING_SCOPE`.
- תוצאות חוקיות: `assessment_decision`, `assessment_clarification_required`, `coverage_gap(scope_resolution)`.
- **scene חדש = הקשר הערכה חדש:** `activeCoverageGapRef` הישן מתאפס כשההערכה החדשה מתחילה. TargetProposal מ-gap קודם אינו current, ו-`RESOLVE_PLANNING` שמפנה אליו מחזיר `REF_INTEGRITY_ERROR`. רשומות היסטוריות נשארות, אך לא פעילות.

```ts
type CoverageState =
  | { status: "SUPPORTED"; scope: DomainScope /* target_resolved */ }
  | { status: "COVERAGE_GAP"; scope: DomainScope; gapRef: string };
```

---

# 38. CanonicalStalenessResult

ללא שינוי.

```ts
type CanonicalStalenessResult = {
  resultRef: string;
  resultVersion: string;
};

```

---

# 39. Canonical Result Families

**v0.10:** `BANK_COVERAGE_GAP` הופך ל-`COVERAGE_GAP`. נוסף `CHILD_PREPARATION_PRESENTED`.

```text
ASSESSMENT_DECISION
ASSESSMENT_CLARIFICATION_REQUIRED
MORNING_TASK_MISMATCH_CLARIFICATION_REQUIRED   (v0.11 sync · §4.4)
PLANNING_RESOLVED
COVERAGE_GAP
RUNTIME_ACTION_READY
ATTEMPT_COMPLETED
OBSERVATION_CREATED
PRACTICE_NOT_OCCURRED                          (v0.11 sync · REV3 §9 · released)
REPORT_INSUFFICIENT
NO_OBSERVATION_CREATED
PROGRESS_RESULT
SAFETY_REPLACEMENT
CONTINUITY_RESULT
CHILD_PREPARATION_PRESENTED

```

---

# 40. Canonical Result Types

```ts
type AssessmentDecisionResult = {
  kind:
    "assessment_decision";

  decision:
    | "PROCEED"
    | "ENVIRONMENT_FIRST"
    | "CAPABILITY_PROBE"
    | "KEEP_SUPPORT";

  knowledgeSnapshot:
    KnowledgeSnapshot;

  targetProposal:
    TargetProposal | null;
};

```

PROCEED requires non-null TargetProposal.

---

```ts
type AssessmentClarificationRequired = {
  kind:
    "assessment_clarification_required";

  clarificationRef:
    string;

  datum:
    string;

  questionIntent:
    string;

  knowledgeSnapshotRef:
    string;
};

```

---

```ts
// v0.11 sync · §4.4
type MorningTaskMismatchClarificationRequired = {
  kind:
    "morning_task_mismatch_clarification_required";

  clarificationRef:
    string;

  declaredTask:
    Task;

  classifiedTask:
    Task;              // !== declaredTask

  options:
    ["confirm_classified_task", "keep_declared_task"];
};

```

`questionRef` של התשובה הוא `"morning-task-mismatch"` (§4.4 item 3).

---

```ts
type PlanningResolvedResult = {
  kind:
    "planning_resolved";

  activeTarget:
    ActiveTarget;

  planningInstance:
    PlanningInstance;
};

```

---

```ts
type CoverageGapResult = {          // v0.10 (was BankCoverageGapResult)
  kind:
    "coverage_gap";

  gap:
    CoverageGap;
};

```

---

```ts
type RuntimeActionReadyResult = {
  kind:
    "runtime_action_ready";

  attemptSessionRef:
    string;

  action:
    RuntimeAction;
};

```

---

```ts
type AttemptCompletedResult = {
  kind:
    "attempt_completed";

  pendingCheckin:
    PendingCheckin;
};

```

---

```ts
type ObservationCreatedResult = {
  kind:
    "observation_created";

  observation:
    TargetObservation;
};

```

---

```ts
// v0.11 sync · REV3 §9 · released (`4499671`). No semantic change.
type PracticeNotOccurredResult = {
  kind:
    "practice_not_occurred";

  pendingCheckinRef:
    string;
};

```

G1 = לא: אין Observation, אין ProgressSnapshot, אין ניסיון נמדד. ה-PendingCheckin נסגר כ-`no_practice` (REV3 §9). אין כאן התנהגות הצגה חדשה.

---

```ts
type ReportInsufficientResult =
  | {
      kind:
        "report_insufficient";

      reportContext:
        "target_checkin";

      pendingCheckinRef:
        string;

      evidenceAttemptRef:
        null;

      evidenceType:
        null;

      clarificationRef:
        string | null;

      missingData:
        string[];

      canResolveByClarification:
        boolean;
    }

  | {
      kind:
        "report_insufficient";

      reportContext:
        "assessment_evidence";

      pendingCheckinRef:
        null;

      evidenceAttemptRef:
        string;

      evidenceType:
        | "capability_probe"
        | "environment_check"
        | "bottleneck_observation";

      clarificationRef:
        string | null;

      missingData:
        string[];

      canResolveByClarification:
        boolean;
    };

```

---

```ts
type NoObservationCreatedResult =
  | {
      kind:
        "no_observation_created";

      reportContext:
        "target_checkin";

      pendingCheckinRef:
        string;

      evidenceAttemptRef:
        null;

      evidenceType:
        null;

      reason:
        "unresolved_after_clarification";   // v0.10
    }

  | {
      kind:
        "no_observation_created";

      reportContext:
        "assessment_evidence";

      pendingCheckinRef:
        null;

      evidenceAttemptRef:
        string;

      evidenceType:
        | "capability_probe"
        | "environment_check"
        | "bottleneck_observation";

      reason:
        string;
    }

  | {                                    // v0.11 sync · §4.4 keep_declared_task
      kind:
        "no_observation_created";

      reportContext:
        "assessment_evidence";

      pendingCheckinRef:
        null;

      evidenceAttemptRef:
        null;

      evidenceType:
        null;

      reason:
        "declared_task_kept_new_description_required";
    };

```

---

```ts
type ProgressResult = {
  kind:
    "progress_result";

  progress:
    ProgressSnapshot;
};

```

ל-`ProgressResult` אין שדה presentation. ProgressProjection (§24.5) נמסר ב-`envelope.presentation` של אותה תשובה (v0.11 clarification, ללא שינוי התנהגות).

---

```ts
type SafetyReplacementResult = {
  kind:
    "safety_replacement";

  replacement:
    SafetyReplacement;
};

```

---

```ts
type ContinuityResult = {
  kind:
    "continuity_result";

  childRef:                            // v0.10 · canonical; allocated on fresh bootstrap (§8.1)
    string;

  scope:                               // v0.10 · canonical scope, any stage
    DomainScope;

  stalenessResult:
    CanonicalStalenessResult;

  requiredApplicationState:
    ApplicationStateName;

  preservedRefs:
    string[];
};

```

```ts
type ChildPreparationPresentedResult = {   // v0.10
  kind:
    "child_preparation_presented";

  planningInstanceRef:
    string;

  presentationState:
    "PRESENTED";
};
```

---

# 41. CanonicalResult Union

```ts
type CanonicalResult =
  | AssessmentDecisionResult
  | AssessmentClarificationRequired
  | MorningTaskMismatchClarificationRequired   // v0.11 sync · §4.4
  | PlanningResolvedResult
  | CoverageGapResult
  | RuntimeActionReadyResult
  | AttemptCompletedResult
  | ObservationCreatedResult
  | PracticeNotOccurredResult                  // v0.11 sync · REV3 §9
  | ReportInsufficientResult
  | NoObservationCreatedResult
  | ProgressResult
  | SafetyReplacementResult
  | ContinuityResult
  | ChildPreparationPresentedResult;

```

Zod composition נשאר:

```text
Base ZodObjects
→ discriminatedUnion
→ union-level refinements

```

אין שינוי ל־result semantics.

---

# 42. PendingCheckin

**v0.10:** `abandoned` נקבע רק במעבר אחד, בסוף רצף הבהרה: `SUBMIT_CHECKIN` מחזיר `report_insufficient` (`canResolveByClarification: true`), ואחריו `ANSWER_CHECKIN_CLARIFICATION` מחזיר `no_observation_created(reportContext: target_checkin, reason: unresolved_after_clarification)`, וזה מעביר PENDING_CHECKIN → PLAN_READY.
- `activePendingCheckinRef` הופך ל-null.
- אין Observation ואין ProgressSnapshot.
- ה-Target וה-Plan לא משתנים.
- ref שהוא `abandoned` ב-`SUBMIT_CHECKIN` / `ANSWER_CHECKIN_CLARIFICATION` מחזיר `REF_INTEGRITY_ERROR`, והוא לא מופיע ב-`preservedRefs`.
- מקור: POST_ATTEMPT_CHECKIN_SPEC §6.

**v0.11 sync · `no_practice` (REV3 §9):** `SUBMIT_CHECKIN` עם G1 = no מחזיר `practice_not_occurred { pendingCheckinRef }`.
- ה-PendingCheckin הפעיל עובר ל-`no_practice` ונסגר; `activePendingCheckinRef` הופך ל-null.
- PENDING_CHECKIN → PLAN_READY: אותו Target, אותו PlanningInstance; `allowedNextActions` של PLAN_READY.
- אין Observation, אין ProgressSnapshot, אין measured attempt, לא נכנס ל-Rule 5. Staleness לא מתארך ולא מתקצר.
- `pendingCheckinRef` חייב להיות ה-PendingCheckin הפעיל.

```ts
type PendingCheckin = {
  pendingCheckinRef: string;
  attemptSessionRef: string;
  targetRef: string;
  planningInstanceRef: string;

  status:
    | "pending"
    | "in_progress"
    | "insufficient_report"
    | "resolved"
    | "abandoned"
    | "no_practice";                  // v0.11 sync · REV3 §9

  attemptOccurredAt:
    string;

  knownRuntimeEventRefs:
    string[];
};

```

---

# 43. CanonicalResponseEnvelope

**Wire version:** `contractVersion: "0.10"` בכל envelope (וב-`CommandContext`). זו גרסת ה-wire המשוחררת, והיא מכסה את ה-shapes שמתועדים במסמך v0.11 זה. אין bump ב-runtime. מדיניות versioning של ה-wire = follow-up נפרד (GOVERNANCE / IMPLEMENTATION).

```ts
type SuccessfulCanonicalResponseEnvelope = {
  contractVersion:
    "0.10";

  requestId:
    string;

  command:
    ApplicationCommandName;

  status:
    "ok";

  canonicalResult:
    CanonicalResult;

  applicationTransition:
    ApplicationTransition;

  effects:
    CanonicalEffects | null;

  allowedNextActions:
    AllowedNextAction[];

  presentation:
    PresentationPayload | null;

  provenance:
    ResponseProvenance;

  stateRevision:
    string;

  technicalError?: never;
};

```

```ts
type TechnicalErrorResponseEnvelope = {
  contractVersion:
    "0.10";

  requestId:
    string;

  command:
    ApplicationCommandName;

  status:
    "technical_error";

  canonicalResult?: never;
  applicationTransition?: never;
  effects?: never;
  presentation?: never;

  allowedNextActions: [];

  provenance:
    ResponseProvenance;

  stateRevision:
    string | null;

  technicalError:
    TechnicalError;
};

```

```ts
type CanonicalResponseEnvelope =
  | SuccessfulCanonicalResponseEnvelope
  | TechnicalErrorResponseEnvelope;

```

---

# 44. Envelope Zod

```ts
const SuccessfulCanonicalResponseEnvelopeBaseSchema =
  z.object({
    contractVersion:
      z.literal("0.10"),

    requestId:
      z.string().min(1),

    command:
      ApplicationCommandNameSchema,

    status:
      z.literal("ok"),

    canonicalResult:
      CanonicalResultSchema,

    applicationTransition:
      ApplicationTransitionSchema,

    effects:
      CanonicalEffectsSchema
        .nullable(),

    allowedNextActions:
      z.array(
        AllowedNextActionSchema
      ),

    presentation:
      PresentationPayloadSchema
        .nullable(),

    provenance:
      ResponseProvenanceSchema,

    stateRevision:
      z.string().min(1),
  }).strict();

```

```ts
const TechnicalErrorResponseEnvelopeBaseSchema =
  z.object({
    contractVersion:
      z.literal("0.10"),

    requestId:
      z.string().min(1),

    command:
      ApplicationCommandNameSchema,

    status:
      z.literal(
        "technical_error"
      ),

    allowedNextActions:
      z.tuple([]),

    provenance:
      ResponseProvenanceSchema,

    stateRevision:
      z.string()
        .min(1)
        .nullable(),

    technicalError:
      TechnicalErrorSchema,
  }).strict();

```

```ts
const CanonicalResponseEnvelopeSchema =
  z.discriminatedUnion(
    "status",
    [
      SuccessfulCanonicalResponseEnvelopeBaseSchema,
      TechnicalErrorResponseEnvelopeBaseSchema,
    ]
  )
  .superRefine((value, ctx) => {
    if (
      value.status === "ok" &&
      value.provenance.engineVersion === null
    ) {
      ctx.addIssue({
        code:
          z.ZodIssueCode.custom,

        message:
          "successful response requires engineVersion",
      });
    }
    // v0.11 sync: the released envelope refinements E1–E7 below.
  });

```

**Envelope refinements (released, v0.11 sync):**
- **E1.** `status = ok` ⇒ `provenance.engineVersion ≠ null`.
- **E2.** `HomeProjection` מוחזר רק עם `continuity_result` עבור PLAN_READY / ATTEMPT_IN_PROGRESS / PENDING_CHECKIN; `homeCard` תואם ל-`requiredApplicationState`; `primaryActionId` נמצא ב-`allowedNextActions`. `continuity_result` מחוץ למצבי Home → `presentation = null` (§24.4).
- **E3.** `ProgressProjection` מוחזר **רק** עם `progress_result` (§24.5).
- **E4.** `ProgressProjection.progressDecision = ProgressSnapshot.decision` של אותה תשובה; `reflection.sourceRef = progressSnapshotRef` כשה-reflection קיים.
- **E5.** `fadePresentation ≠ null` ⇒ `RECHECK_AFTER_FADE` נמצא ב-`allowedNextActions`.
- **E6.** `ParentReflectionProjection.sourceRef` תואם ל-`canonicalResult` של אותה תשובה: `observation_created` → `attempt`; `progress_result` → `progress`; `no_observation_created(target_checkin)` → `report_unresolved` (§24.3).
- **E7.** `runtime_action_ready` עם `RuntimeProjection`: `ifNotStart = []` בדיוק כש-`currentAction.source = post_measurement_completion`, ואז `actionText = currentAction.resolvedText` (§4.3 item 10).

---

# 45. Presentation Presence Contract

`presentation` אינו תמיד non-null.

הוא non-null כאשר current canonical response נועד לפתוח surface שקיים לו projection.

## Planning / Plan

כאשר:

```text
PLANNING_RESOLVED

```

וה־flow נכנס ל־Plan surface:

```text
presentation =
FirstPlanProjection

```

חובה non-null.

---

## Pre-Day

כאשר Application מציג Pre-Day surface מתוך Active Planning Instance:

חובה להשתמש ב־stored canonical:

```text
PreDayProjection

```

שנבנה מאותו resolved Rendered Output.

UI אינו בונה אותו מחדש.

---

## Runtime

כאשר:

```text
RUNTIME_ACTION_READY

```

```text
presentation =
RuntimeProjection

```

חובה non-null.

---

## Check-in results and Progress (v0.11 sync)

| canonicalResult | presentation |
|---|---|
| `practice_not_occurred` | **null** (REV3 §9). מחרוזת המסך היא application copy, לא PresentationPayload |
| `observation_created` (valid) | `ParentReflectionProjection(attempt)` כשקיימת שורה מאושרת, אחרת null |
| `observation_created` (non-evidence) | null (REV3 §16). חריג אחד: יום V4 שבו Rule 5 יורה מקבל reflection מסוג `not_held.*` כשקיימת שורה מאושרת (REV3 §19) |
| `no_observation_created(target_checkin)` | `ParentReflectionProjection(report_unresolved)` כשקיימת שורה מאושרת, אחרת null |
| `no_observation_created(assessment_evidence)` · `morning_task_mismatch_clarification_required` | null |
| `progress_result` | `ProgressProjection` או null (§24.5, §44 E3–E5) |

---

## Safety

Safety text אינו נדרש להופיע בתוך `PresentationPayload`, משום שהוא כבר parent-renderable בתוך:

```text
canonicalResult
.replacement
.content
.replacementOutput
.text

```

המסלול הזה קיים רק כאשר `contentAvailability = STATIC_LITERAL_AVAILABLE`. כאשר נדרש external approved content, `replacementOutput = null` ואין parent Safety screen ב־07P.

כאשר Safety מופעל:

normal Plan / Runtime presentation suppressed.

---

# 46. Fixture Presentation Contract

FixtureEngineAdapter חייב להחזיר presentation אמיתי ב־parent-facing paths.

## F09 — Planning Resolved

חובה:

```text
presentation != null
presentation.projectionKind =
first_plan

```

אין placeholders.

---

## Pre-Day Fixture / Stored Projection

Fixture Planning data חייב לכלול canonical PreDayProjection שאפשר להציג ללא Bank lookup.

---

## F10 — Runtime Action Ready

חובה:

```text
presentation != null
presentation.projectionKind =
runtime

```

`actionText` parent-facing.

---

## Safety Fixtures

Parent-renderable Safety fixture מותר רק עבור `STATIC_LITERAL_AVAILABLE` וחייב לכלול `replacement.content.replacementOutput.ref` ו־`.text` קנוניים.

עבור `SOS_SOMATIC_ONLY`, `R5B` ו־`STATIC_FALLBACK` ללא source executable מאושר: `contentAvailability = EXTERNAL_APPROVED_CONTENT_REQUIRED` ו־`replacementOutput = null`.

אין Fixture-authored Safety prose ואין שימוש ב־blocked SOS source.

---

# 47. Bank Rendering Integrity

Fixture projection חייב להיות traceable ל־Rendered Output.

ל־LH-B2-01, לדוגמה, ה־Bank כבר מציג:

- יעד
- הכנה בערב
- פעולה בבוקר
- מה לא
- מה עושים אחרי הדקה

בלי צורך במיפוי UI נוסף.
ל־LH-B2-02 הוא כבר מציג:

- יעד
- הכנת חפצים ושעון חול
- הכרזה
- silence
- restrictions
- fallback sequence אם הילד לא קם לאחר סיום החול.
  ה־projection הוא typed segmentation של Rendered Output זה.

הוא אינו rewrite מקצועי.

---

# 48. Support Presentation Integrity

Fixture/Engine projection builder חייב לבחור:

```text
ParentSupportPresentation

```

מתוך:

```text
PARENT_SUPPORT_PRESENTATION_BY_LEVEL

```

בלבד.

אסור Fixture-specific wording כגון:

```text
level 3 →
"תזכירי לו בעדינות"

```

אם הטקסט אינו canonical ladder presentation.

---

# 49. Safety Content Integrity

Safety Gate הוא replacement boundary ולא normal renderer.

ה־active implementation contract מגדיר:

```text
stop_flag == true
→ OUTPUT_RENDERER does not run
→ REPLACEMENT_LOADER runs instead

```

לכן:

```text
replacementOutput.text

```

אינו:

- presentation generated from Intervention
- renderer rewrite
- AI paraphrase
- generic warning

אלא canonical Safety replacement content.

---

# 50. Test Requirements — Parent Plan

## P-PLAN-01

`FirstPlanProjectionSchema` עם full resolved content:

```text
PASS

```

---

## P-PLAN-02

Target placeholder:

```text
"עוד [transition_unit] אחת"

```

Expected:

```text
FAIL

```

---

## P-PLAN-03

`doNow` containing:

```text
escalation_1

```

Expected:

```text
FAIL

```

---

## P-PLAN-04

Rendered LH-B2-01 fixture contains:

- target
- prepareAhead
- doNow
- doNot
- support
- ifNotStart
- guardrail

Expected:

```text
PASS

```

---

## P-PLAN-05

Rendered LH-B2-02 fixture contains the same parent-facing categories.

Expected:

```text
PASS

```

## P-PLAN-06 — Capability snapshot provenance

`PlanningInstance.capabilitySnapshotRef` equals the source `TargetProposal.knowledgeSnapshotRef`, resolves to an existing `KnowledgeSnapshot`, and matches child/scope. Expected: `PASS`.

Dangling, different-snapshot, different-child or different-scope refs. Expected: `FAIL` and no commit.

## P-PLAN-07 — Parent Understanding complete

All four required strings exist and pass `ParentFacingTextSchema`. Expected: `PASS`.

Missing field, unresolved placeholder, raw `B2`, raw `PROMPT_NEEDED`, numeric Support Level or `unknown` presented as known capability. Expected: `FAIL`.

## P-PLAN-08 — Parent role identity

```text
firstPlan.parentUnderstanding.parentRoleLine
= planningInstance.resolvedParentRoleLine
= preDay.parentRoleLine
```

Expected: `PASS`; any mismatch: `FAIL` and no commit.

## P-PLAN-09 — Explicit Success Signal

`firstPlan.successSignalText === planningInstance.successSignal`. Expected: `PASS`; paraphrase or different content: `FAIL` and no commit.

## P-PLAN-10 — Forbidden v0.8 fallback sentence

No Plan projection string may contain:

```text
עוברים לתכנית הקצרה של עכשיו
```

Expected: `PASS` only when absent.

---

# 51. Test Requirements — Pre-Day

## P-PRE-01

No raw Bank Template fields.

Expected:

```text
PASS

```

## P-PRE-02

No unresolved placeholders.

Expected:

```text
PASS

```

## P-PRE-03

`support` matches canonical ladder mapping for level.

Expected:

```text
PASS

```

## P-PRE-04 — v0.9 content complete

Pre-Day contains resolved `parentRoleLine`, `childPreparationLine`, the literal applicability `BEFORE_FIRST_ATTEMPT_FOR_PLANNING_INSTANCE`, `announcementText` according to source applicability, full `inTheMomentText`, explicit `guardrailText`, and `successSignalText`. Expected: `PASS`.

## P-PRE-05 — Immutable content

Serialize/restore returns the exact same stored Pre-Day content. Application visibility changes must not mutate or overwrite the bundle. Expected: `PASS`.

## P-PRE-06 — First-attempt visibility (v0.10: engine-owned)

- no AttemptSession for active PlanningInstance → preparation surface available
- one or more AttemptSessions for the same PlanningInstance → not available
- historical attempts for another PlanningInstance → do not suppress the active one
- new PlanningInstance (T7a / T7b) → available, and `childPreparationPresentationState = NOT_PRESENTED`
- `REQUIRED` + `NOT_PRESENTED` → `START_RUNTIME_ATTEMPT` ∉ `allowedNextActions`
- `RECORD_CHILD_PREPARATION_PRESENTED` → `PRESENTED` (idempotent, never reverts)

Expected: `PASS`.

## P-PRE-07 — UI does not count attempts

Renderer receives the engine-owned requirement and presentation state; it does not inspect sessions, observations or progress, and does not derive visibility. Expected: `PASS`.

## P-PRE-08 — No invented preparation semantics

No repetition count, no preparation Observation, no Capability Probe and no new invalidation are generated. Expected: `PASS`.

## P-PRE-09 — Announcement source integrity

If the source Planning Instance includes `SETUP-LH-TRANSITION-ANNOUNCEMENT`, `preDay.announcementText` is non-null and equals the already-resolved canonical announcement for that Planning Instance. If no announcement component applies, the field is `null`. UI parsing of `prepareAhead` or `resolvedSetup` to recover announcement text is prohibited. Expected: `PASS`.

## P-PRE-10 — Explicit Success Signal

`preDay.successSignalText === planningInstance.successSignal`. Expected: `PASS`; paraphrase, omission or different content: `FAIL` and no commit.

## P-PRE-11 — Hebrew placeholder rejection

Parent-facing content containing unresolved Hebrew placeholders such as:

```text
[הוא/היא]
[קם/קמה]
[את/אתה]
[שם]
```

Expected: `FAIL`.

## P-PRE-12 — LH-B2-02 preparation completeness

For `LH-B2-02`, `resolvedChildPreparationLine` must contain both canonical preparation components:
- the sentence told to the child before the first attempt;
- the short calm-time sand-timer familiarization/rehearsal.

No repetition count may be introduced. Omission of either component: `FAIL`.

## P-PRE-13 — Full in-the-moment identity

```text
preDay.inTheMomentText
=
firstPlan.doNow
```

Expected: `PASS`; first-step-only projection, omission of the wait/silence part, or different content: `FAIL`.

## P-PRE-14 — Announcement segmentation + constancy

When `announcementText` is non-null:
- it is the resolved spoken announcement only;
- `prepareAhead` does not repeat that announcement;
- `prepareAhead` includes one parent-facing line preserving the canonical requirement that the announcement is said in the same words every morning.

Fixture missing the constancy line, or repeating the spoken announcement inside `prepareAhead`: `FAIL`.

Expected: `PASS`.

## P-PRE-15 — Guardrail identity

```text
preDay.guardrailText
=
firstPlan.guardrailText
```

and `preDay.doNot` does not duplicate it as a separate identical line.

Expected: `PASS`.

---

# 52. Test Requirements — Runtime

## P-RUN-01

`RUNTIME_ACTION_READY` returns:

```text
presentation != null

```

Expected:

```text
PASS

```

---

## P-RUN-02

Runtime projection has:

```text
targetText
actionText
doNot
support
ifNotStart

```

Expected:

```text
PASS

```

---

## P-RUN-03

Runtime UI can render projection without:

```text
Intervention Bank import
Support Ladder import
Safety Gate import

```

Expected:

```text
PASS

```

---

## P-RUN-04

Runtime contains unresolved placeholder.

Expected:

```text
FAIL

```

## P-RUN-05 — Planning-only content excluded

Runtime projection contains no `ParentUnderstanding`, `parentRoleLine`, `childPreparationLine` or `childPreparationApplicability`. Expected: `PASS`.

## P-RUN-06 — Blocked fallback remains blocked

Runtime contains no `"עוברים לתכנית הקצרה של עכשיו"`, no substitute fallback copy and no executable content from `SOS_12_Nodes_Bank_v1_0`. Unresolved fallback behavior remains fail-closed when executable content is required. Expected: `PASS`.

---

# 53. Test Requirements — Support Ladder

לכל level 1–6:

```text
ParentSupportPresentationSchema.parse(
  canonicalMapping[level]
)

```

Expected:

```text
PASS

```

---

## Wrong Label

לדוגמה:

```text
level = 3
label = "מסמנים"

```

Expected:

```text
FAIL

```

---

## Wrong Instruction

Level נכון אך instruction שאינו canonical.

Expected:

```text
FAIL

```

---

## Planning Bundle Atomicity

לאחר successful Planning קיימים יחד `PlanningInstance`, `ActiveTarget`, `FirstPlanProjection`, `PreDayProjection` ו־`PlanningPresentationBundle`; כל ה־refs תואמים. כשל באחד מהם מבטל את כל ה־commit.

Expected: `PASS`.

## Pre-Day Serialization / Return

```text
activePlanningInstanceRef
→ stored projection bundle
→ exact same PreDayProjection

```

אין Bank import או reconstruction. Expected: `PASS`.

## ADJUST Presentation History

Successful ADJUST replan שומר את ה־bundle הישן ויוצר bundle חדש ל־PlanningInstance החדש. Expected: `PASS`.

## Runtime Projection Timing

לפני Runtime אין דרישה ל־RuntimeProjection; לאחר `RUNTIME_ACTION_READY` הוא נדרש. Expected: `PASS`.

---

# 54. Test Requirements — Safety

## P-SAFE-01 — Static literal available

`SILENCE` או mode אחר שסווג `STATIC_LITERAL_AVAILABLE` כולל full canonical `ref` ו־`text`. Expected: `PASS`.

## P-SAFE-02 — External approved content required

`SOS_SOMATIC_ONLY` ללא source executable מאושר כולל `replacementOutput = null`. Expected: `PASS`; אין placeholder ואין generated copy.

## P-SAFE-03 — R5B unresolved

ללא approved resolved source: `contentAvailability = EXTERNAL_APPROVED_CONTENT_REQUIRED` ו־`replacementOutput = null`. Expected: `PASS`.

## P-SAFE-04 — Static fallback unresolved

ללא approved `static_fallback_table`: `EXTERNAL_APPROVED_CONTENT_REQUIRED`. Expected: `PASS` ללא free-text substitute.

## P-SAFE-05 — Invented or blocked content

Generated text, generic substitute או resolution דרך `SOS_12_Nodes_Bank_v1_0`. Expected: `FAIL`.

## P-SAFE-06 — Safety precedence

Safety response still carries normal Runtime/Plan presentation. Expected: `FAIL`.

---

# 55. Renderer Ownership Test

Build must contain an import-boundary test.

Forbidden imports from UI renderer modules:

```text
INTERVENTION_BANK_leaving_home_B2_v0_9
CHILD_SUPPORT_LADDER_v0_5
SAFETY_GATE_MASTER_SPEC_v1_0
SOS_12_Nodes_Bank_v1_0
Decision Matrix
Support Ladder constants outside public presentation module

```

Allowed:

```text
PresentationPayload
ParentSupportPresentation
SafetyReplacementOutput

```

---

# 56. No Placeholder Gate

For every fixture presentation string recursively:

```text
contains unresolved template token?
→ FAIL

```

Required gate:

```text
PLAN PLACEHOLDERS: NONE
RUNTIME PLACEHOLDERS: NONE

```

---

# 57. No Professional Mapping in UI

The following pattern is prohibited:

```ts
if (supportLevel === 3) {
  return "אומרים פעם אחת";
}

```

in UI.

Also prohibited:

```ts
switch (interventionId) {
  case "LH-B2-01":
    ...
}

```

in UI.

Also prohibited:

```ts
if (stopMode === "SILENCE") {
  return "...";
}

```

in UI.

All three mappings must already be resolved upstream.

**v0.10:** Parent Reflection נבנה ב-presentation builder (§24.3). `interventionId`, רמת תמיכה ו-cue לא ממופים לטקסט ב-UI.

---

# 58. Public Type Registry — v0.9 + v0.10

| Type | TS Shape | Zod | Parent-renderable | Status |
|---|---|---|---|---|
| ParentFacingText                       | YES | YES | YES | COMPLETE |
| ParentSupportPresentation              | YES | YES | YES | COMPLETE |
| ParentUnderstanding                    | YES | YES | YES | COMPLETE |
| PlanningInstance                       | YES | YES | NO  | CHANGED  |
| FirstPlanProjection                    | YES | YES | YES | COMPLETE |
| PreDayProjection                       | YES | YES | YES | COMPLETE |
| RuntimeProjection                      | YES | YES | YES | COMPLETE |
| PresentationPayload                    | YES | YES | YES | COMPLETE |
| PlanningPresentationBundle             | YES | YES | YES | COMPLETE |
| SafetyReplacementContentAvailability   | YES | YES | YES | COMPLETE |
| SafetyReplacementOutput                | YES | YES | YES | COMPLETE |
| SafetyReplacementContent               | YES | YES | YES | COMPLETE |
| SafetyReplacement                      | YES | YES | YES | COMPLETE |

**v0.10:**

| Type | TS Shape | Zod | Parent-renderable | Status |
|---|---|---|---|---|
| DomainScope (staged + registry)        | YES | YES | NO  | CHANGED  |
| CommandContext                         | YES | YES | NO  | CHANGED  |
| RecordChildPreparationPresentedCommand | YES | YES | NO  | NEW      |
| CoverageGap (phase union)              | YES | YES | NO  | CHANGED  |
| CoverageGapResult                      | YES | YES | NO  | RENAMED  |
| ContinuityResult (+childRef, +scope)   | YES | YES | NO  | CHANGED  |
| NoObservationCreatedResult (target)    | YES | YES | NO  | CHANGED  |
| ChildPreparationPresentedResult        | YES | YES | NO  | NEW      |
| PlanningInstance (+requirement)        | YES | YES | NO  | CHANGED  |
| PreDayProjection (+requirement)        | YES | YES | YES | CHANGED  |
| ParentReflectionProjection             | YES | YES | YES | NEW      |
| HomeProjection                         | YES | YES | YES | NEW      |
| PreDayApplicationView                  | —   | —   | —   | REMOVED  |

**v0.11 sync (released additions, `4499671`):**

| Type | TS Shape | Zod | Parent-renderable | Status | Source |
|---|---|---|---|---|---|
| InterventionId (+DR-B1-01)             | YES | YES | NO  | CHANGED | §4.3, §12 |
| ResolvedSetupComponent (+SETUP-DR-CLOTHES-ORDERED) | YES | YES | NO | CHANGED | §12 |
| CompressedRuntimeAction (+post_measurement_completion) | YES | YES | NO | CHANGED | §12 |
| ResolvedChainTerminal (+action)        | YES | YES | NO  | CHANGED | §12 |
| RuntimeCursor (engine state, not wire) | YES | —   | NO  | NEW     | §12 |
| PlanningInstance (+resolvedPostMeasurementCompletion, guardrail nullable) | YES | YES | NO | CHANGED | §15 |
| EndRuntimeCompletionKind (+stop_measurement) | YES | YES | NO | CHANGED | §5, §10 |
| AllowedNextAction (+allowedCompletionKinds) | YES | YES | NO | CHANGED | §5 |
| ReportRuntimeNoStartCommand            | YES | YES | NO  | NEW     | §10 |
| SubmitSceneCommand (+declaredTask)     | YES | YES | NO  | CHANGED | §10, §4.4 |
| FirstPlan / PreDay / RuntimeProjection (+safetyStopText; guardrail nullable; runtime ifNotStart may be []) | YES | YES | YES | CHANGED | §19–§21 |
| ObservableAnswer (+multi_choice)       | YES | YES | NO  | CHANGED | §9 |
| ContextFactId · PracticeAsPlanned · NotHeldReason | YES | YES | NO | NEW | §9.1 |
| TargetObservation (+practiceAsPlanned, contextFacts, cueResetAfterSeen, ranDifferentPlan; invalidReason +3; −skipped_setup) | YES | YES | NO | CHANGED | §28 |
| ProgressSnapshot (+ruleFiveWindowRefs) | YES | YES | NO  | CHANGED | §30 |
| PendingCheckin.status (+no_practice)   | YES | YES | NO  | CHANGED | §42 |
| TargetProposal / ActiveTarget (+support actions) | YES | YES | NO | CHANGED | §11, §24.5 |
| ProgressProjection                     | YES | YES | YES | NEW     | §22, §24.5 |
| MorningTaskMismatchClarificationRequired | YES | YES | NO | NEW   | §40 |
| NoObservationCreatedResult (+declared_task_kept branch) | YES | YES | NO | CHANGED | §40 |
| PracticeNotOccurredResult              | YES | YES | NO  | NEW     | §40 |

כל שאר public types מ־v0.8 נשארים `COMPLETE`.

---

# 59. Projection Completeness

## First Plan answers

```text
מה היעד?
→ targetText

```

```text
מה הילד כבר יודע, איפה זה נעצר, מה משתנה בעזרה ומה תפקיד ההורה?
→ parentUnderstanding

```

```text
מה להכין מראש?
→ prepareAhead

```

```text
מה לעשות?
→ doNow

```

```text
מה לא לעשות?
→ doNot

```

```text
כמה עזרה לתת?
→ support

```

```text
מה לעשות אם זה לא מתחיל?
→ ifNotStart

```

```text
מה ייחשב הצלחה?
→ successSignalText

```

---

## Pre-Day answers

```text
מה אנחנו מתרגלים מחר?
→ targetText

```

```text
מה התפקיד שלי?
→ parentRoleLine

```

```text
מה אומרים לילד לפני הניסיון הראשון?
→ childPreparationLine
→ shown only while the engine reports the preparation surface available (v0.10 §24.2)

```

```text
מה להכין?
→ prepareAhead

```

```text
מה אומרים מראש?
→ announcementText
→ מוצג רק כאשר הערך non-null

```

```text
מה עושים ברגע עצמו?
→ inTheMomentText

```

```text
מה לא לעשות?
→ doNot

```

```text
מה ה־guardrail שלי?
→ guardrailText

```

```text
כמה לעזור?
→ support

```

```text
מה התכנית אם זה לא מתחיל?
→ ifNotStartPreview

```

```text
מה מסתכלים לראות?
→ successSignalText

```

---

## Runtime answers

```text
מה היעד כרגע?
→ targetText

```

```text
מה לעשות עכשיו?
→ actionText

```

```text
מה לא לעשות?
→ doNot

```

```text
מה ה־guardrail שלי?
→ guardrailText

```

```text
כמה לעזור?
→ support

```

```text
מה לעשות אם זה לא מתחיל?
→ ifNotStart

```

---

# 60. Presentation Does Not Change Professional Truth

Projection אינו source of truth ל־:

- target level
- support calculation
- intervention selection
- escalation decision
- Observation
- Progress
- Safety

`FirstPlanProjection` ו־`PreDayProjection` נשמרים יחד ב־immutable `PlanningPresentationBundle` לפי `planningInstanceRef`. הם אינם משוחזרים ב־UI ואינם נגזרים זה מזה.

אסור לשחזר professional state על ידי parsing של presentation text.

---

# 61. Canonical Transition Semantics

v0.9 ללא שינוי, מלבד שמות ה-Gap ומצבי המקור הנעולים. תוספות v0.10 בסוף הטבלה:

| ResultTransition     |                                              |
| -------------------- | -------------------------------------------- |
| PROCEED              | `ASSESSING/TARGET_RECHECK → TARGET_PROPOSED` |
| ENVIRONMENT_FIRST    | remain `ASSESSING`                           |
| CAPABILITY_PROBE     | remain `ASSESSING`                           |
| KEEP_SUPPORT         | `→ HOLDING`                                  |
| Clarification        | remain `ASSESSING`                           |
| Planning Resolved    | `TARGET_PROPOSED/REPLANNING → PLAN_READY`    |
| Coverage Gap · target_creation   | `TARGET_PROPOSED → COVERAGE_GAP` (only)  |
| Coverage Gap · adjust_replanning | `REPLANNING → COVERAGE_GAP` (only)       |
| Runtime Action Ready | `PLAN_READY → ATTEMPT_IN_PROGRESS`           |
| Attempt Completed    | `ATTEMPT_IN_PROGRESS → PENDING_CHECKIN`      |
| Target Observation   | `PENDING_CHECKIN → LEARNING_RESULT`          |
| Evidence             | Assessment-derived transition                |
| KEEP                 | `LEARNING_RESULT → PLAN_READY`               |
| ADJUST               | `LEARNING_RESULT → REPLANNING`               |
| FADE                 | `LEARNING_RESULT → TARGET_RECHECK`           |
| Safety               | `→ SAFETY_REPLACEMENT`                       |
| **v0.10** Continuity · fresh bootstrap (`childRef=null`) | `→ ASSESSING` · allocates childRef (idempotent by requestId) |
| **v0.10** Continuity · reconciliation | `→ requiredApplicationState` · no mutation |
| **v0.10** Coverage Gap · scope_resolution | `ASSESSING → COVERAGE_GAP`, or `COVERAGE_GAP → COVERAGE_GAP` via fresh `SUBMIT_SCENE` only |
| **v0.10** Fresh scene from Coverage Gap (`scope_resolution` / `target_creation` only) | `COVERAGE_GAP → TARGET_PROPOSED / ASSESSING / HOLDING` via `SUBMIT_SCENE` · old gap cleared |
| **v0.10** Check-in unresolved after clarification | `PENDING_CHECKIN → PLAN_READY` · PendingCheckin `abandoned` |
| **v0.10** Child Preparation presented | `PLAN_READY → PLAN_READY` · `NOT_PRESENTED → PRESENTED` (idempotent) |
| **v0.10** New PlanningInstance | only via `TARGET_PROPOSED + RESOLVE_PLANNING` or `REPLANNING + REPLAN_AFTER_ADJUST` → `PLAN_READY` · starts `NOT_PRESENTED` |

**v0.11 sync (released, `4499671`).** השורה "Target Observation `PENDING_CHECKIN → LEARNING_RESULT`" למעלה מוחלפת בניתוב לפי REV3 §15:

| Result / command | Transition | allowedNextActions |
|---|---|---|
| Target Observation · `valid` | `PENDING_CHECKIN → LEARNING_RESULT` | `EVALUATE_PROGRESS` |
| Target Observation · invalid `parent_unmeasurable`, Rule 5 fires | `PENDING_CHECKIN → LEARNING_RESULT` | `EVALUATE_PROGRESS` → ADJUST(`parent_execution_block`) |
| Target Observation · invalid `parent_unmeasurable`, Rule 5 does not fire | `PENDING_CHECKIN → PLAN_READY` · non-evidence result, no snapshot | PLAN_READY actions |
| Target Observation · any other invalid (C1, C2, V6c, …) | `PENDING_CHECKIN → PLAN_READY` · non-evidence result, no snapshot | PLAN_READY actions |
| `practice_not_occurred` (G1 = no) | `PENDING_CHECKIN → PLAN_READY` · PendingCheckin `no_practice` | PLAN_READY actions |
| `morning_task_mismatch_clarification_required` | `ASSESSING/COVERAGE_GAP → ASSESSING` · no scope / knowledge / Target | `ANSWER_ASSESSMENT_CLARIFICATION` |
| mismatch → `confirm_classified_task` | the existing assessment route of the classified task | per route |
| mismatch → `keep_declared_task` | `ASSESSING → ASSESSING` · `no_observation_created(assessment_evidence, declared_task_kept_new_description_required)` | `SUBMIT_SCENE` |
| `REPORT_RUNTIME_NO_START` | `ATTEMPT_IN_PROGRESS → ATTEMPT_IN_PROGRESS` · same AttemptSession, cursor +1, new `runtimeActionRef` | by cursor (§4.3 item 9) |
| `END_RUNTIME_ATTEMPT(stop_measurement)` | `ATTEMPT_IN_PROGRESS → ATTEMPT_IN_PROGRESS` · cursor → `post_measurement_completion` | `END_RUNTIME_ATTEMPT [normal_end, user_ended]` |
| `END_RUNTIME_ATTEMPT(normal_end / user_ended)` | `ATTEMPT_IN_PROGRESS → PENDING_CHECKIN` (`attempt_completed`) | `SUBMIT_CHECKIN` |
| ADJUST → `REPLAN_AFTER_ADJUST` with no replan source (LH-B2-02 and K2 / DR-B1-01) | `REPLANNING → COVERAGE_GAP(adjust_replanning)` · active Target kept | `[]` (§37.2) |
| FADE → `RECHECK_AFTER_FADE` · **PUBLIC PARENT PATH** | `technical_error`; state stays `TARGET_RECHECK` (no public recheck scenario) · OD-P1-09 | `[]` |
| FADE → `RECHECK_AFTER_FADE` · **FIXTURE / DEMO PATH** (F20 → F21) | `TARGET_RECHECK → TARGET_PROPOSED` (PROCEED); the later planning resolution fails · OD-P1-09 | `RESOLVE_PLANNING` |

---

# 62. Public Contract Invariants

1. Frontend never computes professional decisions.
2. UI never imports Intervention Bank.
3. UI never imports Support Ladder.
4. UI never imports Safety SoT.
5. Planning projection comes only from resolved Planning Instance / Rendered Output.
6. Runtime projection is fully self-contained.
7. First Plan contains parent-facing target.
8. First Plan contains parent-facing setup/preparation.
9. First Plan contains parent-facing action.
10. First Plan contains parent-facing do-not content.
11. First Plan contains ParentSupportPresentation.
12. First Plan contains parent-facing if-not-start content.
13. Pre-Day projection is resolved, not a raw Template.
14. Runtime action is distinct from Planning move.
15. Runtime projection contains no unresolved placeholder.
16. Plan projection contains no unresolved placeholder.
17. ParentSupportPresentation comes only from canonical Ladder mapping.
18. ParentSupport label/instruction are not authored by UI.
19. Internal B2/intervention/escalation labels are not parent-facing.
20. Safety replacement contains canonical text only for `STATIC_LITERAL_AVAILABLE`.
21. `EXTERNAL_APPROVED_CONTENT_REQUIRED` requires `replacementOutput = null`.
22. Safety text is not generated.
23. Safety text is not sourced from blocked SOS bank.
24. Safety suppresses normal intervention rendering.
25. `replacementOutput.ref` and `.text` travel together only inside the static-literal branch.
26. First Plan and Pre-Day are created atomically with successful Planning.
27. PlanningPresentationBundle is immutable and keyed by planningInstanceRef.
28. ADJUST preserves the old bundle and creates a new bundle.
29. KEEP / ADJUST / FADE are computed per Progress v0.3.3 as released in REV3: the real calculation over valid records, plus Rule 5 (§30).
30. Target Observation semantics follow Observation v0.10 and REV3: `attemptValidity` = evidence usability; `invalidReason` = family; `contextFacts` = reported detail (§28).
31. CanonicalEffects semantics are unchanged.
32. Application States are the twelve in `ApplicationStateName`. Neither the v0.10 deltas nor REV3 add a state.
33. The command list is §10: v0.10 adds `RECORD_CHILD_PREPARATION_PRESENTED`; K2 (§4.3) adds `REPORT_RUNTIME_NO_START`.
34. Canonical Result families are §39: v0.10 renames `coverage_gap` and adds `child_preparation_presented`; PR-B (§4.4) adds `morning_task_mismatch_clarification_required`; REV3 adds `practice_not_occurred`.
35. Professional Decision Logic is unchanged.
36. PlanningInstance.capabilitySnapshotRef resolves to the exact KnowledgeSnapshot referenced by its source TargetProposal.
37. Capability snapshot childRef and DomainScope match the Planning transaction.
38. Parent Understanding is fully resolved upstream and contains no raw professional mapping input for the UI.
39. First Plan parentRoleLine equals PlanningInstance.resolvedParentRoleLine.
40. First Plan successSignalText equals PlanningInstance.successSignal.
41. Pre-Day parentRoleLine equals First Plan parentRoleLine.
42. Pre-Day childPreparationLine equals PlanningInstance.resolvedChildPreparationLine.
43. Child Preparation applicability and requirement are immutable in the bundle; visibility and presentation state are engine-owned (v0.10, §24.2).
44. UI does not count attempts and does not compute Child Preparation visibility.
45. Parent Understanding and Child Preparation do not appear in RuntimeProjection.
46. The removed v0.8 fallback sentence does not appear in Plan, Pre-Day or Runtime content.
47. KG-010 creates no attempt count, Observation, Capability Probe or invalidation rule.
48. KG-011 leaves blocked SOS unresolved and non-executable.
49. Parent-facing placeholder validation rejects unresolved Hebrew bracket placeholders.
50. For LH-B2-02, resolvedChildPreparationLine includes both the child-facing sentence and calm-time timer familiarization, with no repetition count.
51. Pre-Day inTheMomentText equals First Plan doNow and represents the full resolved move, not only its first step.
52. When announcementText is present, prepareAhead does not duplicate the spoken announcement and preserves one parent-facing constancy line derived from SETUP-LH-TRANSITION-ANNOUNCEMENT.
53. Pre-Day guardrailText equals First Plan guardrailText and is not duplicated inside doNot.
54. Pre-Day targetText and support presentation remain identical to the same Planning bundle.
49. Pre-Day successSignalText equals PlanningInstance.successSignal.
50. Pre-Day announcementText is populated only from the already-resolved canonical announcement for the same PlanningInstance; UI never derives it from `prepareAhead` or raw setup content.
51. When the resolved setup for the PlanningInstance includes `SETUP-LH-TRANSITION-ANNOUNCEMENT`, Pre-Day announcementText is non-null; when no announcement applies, it is null.
52. Pre-Day announcementText and successSignalText do not create new Professional fields or change Planning, Observation, Progress, Runtime or Safety semantics.

---

**v0.10 invariants:**

V1. `RESUME_CONTINUITY` carries `scope`, `applicationState` and `stateRevision` = null. Every other command carries all four context fields non-null.
V2. `RESUME_CONTINUITY` with `childRef = null` is the single bootstrap mutation exception. It allocates a canonical `childRef` idempotently by `requestId`.
V3. The client reuses the same bootstrap `requestId` until a successful response. Automatic retry never generates a new `requestId`.
V4. After a successful fresh RESUME, the client persists the returned `childRef` before any mutating command.
V5. `RESUME_CONTINUITY` with an existing `childRef` performs reconciliation only and never allocates another child.
V6. `stateRevision` is never persisted client-side. The controller keeps the latest revision in memory.
V7. `DomainScope` stage invariants and registry membership hold for every scope-bearing entity (§4.1).
V8. TargetProposal validity is professional (registry) and independent of Bank coverage.
V9. Each CoverageGap phase has exactly one source state (§37.1).
V10. `scope_resolution` never invents a task.
V11. A new PlanningInstance is created only via T7a / T7b and starts `NOT_PRESENTED`.
V12. `REQUIRED` + `NOT_PRESENTED` ⇒ `START_RUNTIME_ATTEMPT` ∉ `allowedNextActions`.
V13. `RECORD_CHILD_PREPARATION_PRESENTED` is `kind: "command"`, is idempotent, and never reverts the state.
V14. Presentation state is not completion tracking. It creates no Observation, Progress input or validity rule.
V15. `abandoned` PendingCheckin is reachable only through `unresolved_after_clarification`, and creates no Observation or Progress.
V16. `ParentReflectionProjection` lives in `presentation`, never in `canonicalResult`, and no engine decision reads it.
V17. `HomeProjection` is returned only with `continuity_result` for PLAN_READY / ATTEMPT_IN_PROGRESS / PENDING_CHECKIN. H1/H2 follow AttemptSession existence, not presentation state.
V18. Persistence stores only `childRef`, rendering identity and canonical refs. It never stores `applicationState`, `scope`, `stateRevision`, rendered text or `allowedNextActions`.

**v0.11 sync · REV3 invariants (released):**

R1. Practice occurring is not Progress evidence. G1 = no creates no Observation, no ProgressSnapshot and no measured attempt; the PendingCheckin closes as `no_practice` (§42).
R2. The measured attempt is derived (valid target Observations on the active PlanningInstance) and never stored. No-practice, non-evidence, insufficient, abandoned and Safety-interrupted attempts do not advance it.
R3. Rule 5 is separate from the measured attempt and from the Progress Window. A record may have measured attempt 0 and Rule 5 slot 1 / numerator 1.
R4. `sourceObservationRefs` holds valid target Observations only.
R5. `ruleFiveWindowRefs` exists exactly on ADJUST(`parent_execution_block`): 1–4 Rule-5-eligible refs, numerator ≥ 3, every ref resolves.
R6. No `planned_change_response` (C1) record is ever in `ruleFiveWindowRefs`. A C2 record appears there only as `parent_unmeasurable`.
R7. A ProgressSnapshot on a non-evidence day exists only when Rule 5 fires.
R8. `contextFacts`: `unknown` is exclusive; C1 + C2 never coexist; `cueResetAfterSeen` never coexists with a C2 fact; `cueResetAfterSeen` occurs only on LH-B2-02.
R9. `not_held` carries exactly one of `notHeldReason` / `cueResetAfterSeen` / `ranDifferentPlan`; `held` carries none.
R10. `skipped_setup` is not a `notHeldReason` value. Setup and context travel only in `contextFacts`.
R11. `malformed_step_after_wait` requires an escalation step (`actual-help ≠ planned_support`).
R12. A non-evidence day keeps the same Target and the same PlanningInstance, and shows no KEEP / ADJUST / FADE card and no reflection.

---

# 63. Build 07P Fixture Requirements

Fixtures must include parent-renderable projections.

## Planning

For every supported Planning fixture:

```text
presentation != null

```

and:

```text
projectionKind = first_plan

```

All strings resolved.

Planning fixtures must also contain:

```text
PlanningInstance.resolvedParentRoleLine
PlanningInstance.resolvedChildPreparationLine
PlanningInstance.capabilitySnapshotRef
FirstPlanProjection.parentUnderstanding
FirstPlanProjection.successSignalText
PreDayProjection.parentRoleLine
PreDayProjection.childPreparationLine
PreDayProjection.childPreparationApplicability
PreDayProjection.announcementText
PreDayProjection.inTheMomentText
PreDayProjection.guardrailText
PreDayProjection.successSignalText
PreDayProjection.announcementText
PreDayProjection.successSignalText
```

`bankVersion`, `templateVersion`, `presentationVersion` and provenance must identify the released source set of the fixture's template, not generic values. **Released metadata (`4499671`), recorded as is:**

| Template | `templateVersion` | `bankVersion` | `professionalSourceRefs` |
|---|---|---|---|
| LH-B2-02 (LH) | `LH-B2-02@0.9` | `0.9` | Bank leaving_home B2 0.9 · FIRST_PLAN 0.4 · PRE_DAY 0.4 |
| DR-B1-01 (K2) | `DR-B1-01@0.6` | `0.6` | Bank dressing/bag_items 0.6 · KGR 0.5 (KG-002, KG-009, KG-011) · INDEPENDENCE_TARGET 0.6 §5.1 · FIRST_PLAN 0.5 · PRE_DAY 0.5 |
| ParentReflectionProjection | — | `PARENT_LEARNING_LH_B2@0.3` | — |

Current Professional sources are newer (Bank LH v0.10, Bank dressing v0.7, KGR v0.6). The contract does not change released metadata.

---

## Pre-Day

Fixture state חייב לשמור את `PlanningPresentationBundle` שנוצר באותה Planning transaction. `activePlanningInstanceRef → stored bundle → exact same PreDayProjection` גם לאחר serialization/return.

אין reconstruction, Bank lookup או UI transformation מ־FirstPlanProjection.

Fixture state must also prove that `announcementText` is sourced upstream from the resolved announcement for the same PlanningInstance and that `successSignalText` is exactly identical to `PlanningInstance.successSignal`. The UI must not recover either field by parsing other projection strings.

Fixture state must prove the preparation surface is available before the first AttemptSession for the active PlanningInstance, unavailable afterwards, and available again (with `NOT_PRESENTED`) for a new PlanningInstance ref. The stored bundle must remain byte-for-byte semantically equal throughout.

---

## Runtime

For every `RUNTIME_ACTION_READY` fixture:

```text
presentation != null
projectionKind = runtime

```

Runtime fixture content must not carry Parent Understanding, Parent Role or Child Preparation and must not contain the removed v0.8 fallback sentence.

---

## Safety

Parent-renderable Safety fixture מותר רק עבור `STATIC_LITERAL_AVAILABLE` וחייב לכלול canonical `replacementOutput.ref` ו־`.text`.

עבור `SOS_SOMATIC_ONLY`, `R5B` ו־`STATIC_FALLBACK` ללא executable approved source: `EXTERNAL_APPROVED_CONTENT_REQUIRED` ו־`replacementOutput = null`.

The fixture author may not invent Safety text.

---

# 64. Required Test Gate

```text
PLAN PLACEHOLDERS: NONE
RUNTIME PLACEHOLDERS: NONE
SUPPORT COPY SOURCE: EXACT EXISTING LADDER CONTENT
NEW SUPPORT COPY INVENTED: NO
SAFETY STATIC-LITERAL COVERAGE: EXPLICIT
UNSOURCED SAFETY COPY: NONE
PREDAY PROJECTION LIFECYCLE: CLOSED
UI NEEDS NO BANK/LADDER/SAFETY IMPORT: PASS
PRESENTATION SCHEMAS: PASS
CAPABILITY SNAPSHOT REF INTEGRITY: PASS
PARENT UNDERSTANDING: FULLY RESOLVED
SUCCESS SIGNAL IDENTITY: PASS
PARENT ROLE IDENTITY: PASS
PREDAY ANNOUNCEMENT SOURCE INTEGRITY: PASS
PREDAY SUCCESS SIGNAL IDENTITY: PASS
CHILD PREPARATION CONTENT: IMMUTABLE
CHILD PREPARATION VISIBILITY: ENGINE-OWNED (v0.10)
CHILD PREPARATION PRESENTATION STATE: ENGINE-OWNED · NOT COMPLETION
CHILD PREPARATION AFTER FIRST ATTEMPT: HIDDEN
FORBIDDEN V0.8 FALLBACK SENTENCE: NONE
HEBREW PLACEHOLDERS: NONE
LH-B2-02 CHILD PREPARATION: BOTH COMPONENTS PRESENT
PREDAY FULL MOVE: PASS
PREDAY ANNOUNCEMENT DUPLICATION: NONE
PREDAY ANNOUNCEMENT CONSTANCY: PRESENT
PREDAY GUARDRAIL IDENTITY: PASS
BLOCKED SOS EXECUTABLE USE: NONE

```

---

# 65. Delta Boundary

## v0.11 RECONCILED DRAFT (§67.1)

**Changed:** אשרור governance של §4.3, §4.4, §24.5 (03.10.2026); sync גוף החוזה (§22, §39, §40, §41, SUBMIT_SCENE, TargetProposal, ActiveTarget); sync של `practice_not_occurred` (REV3 §9, משוחרר); **REV3 full sync:** §5, §9, §10, §12, §15, §16.1, §19–§21, §28, §30, §42–§45, §58, §61–§63, §7.1; citations נוכחיים; הסרת נעילות copy מתוך החוזה; §67 שורות 13–15 ו-§67.1.

**Unchanged:** כל הרשימה של v0.10 למטה. בנוסף: `contractVersion` נשאר `"0.10"` ב-runtime; אין שינוי בתוויות ובמחרוזות המשוחררות; אין שינוי ב-REV3, ב-KEEP / ADJUST / FADE, במעברי Target, ב-Intervention Banks, ב-Safety.

## v0.10 (§67)

**Changed:** ראו §67.

**Unchanged:**
- Professional Decision Logic
- Application States
- KEEP / ADJUST / FADE
- Observation and CanonicalEffects semantics
- Support Ladder mapping
- wait windows and escalation chain
- Safety and replacement semantics
- runtime fallback fail-closed behavior (KG-011)
- Holding branch
- LH-B2 Bank content
- Parent-Learning Bank v0.3 copy
- F01–F26 professional semantics

## v0.9 (היסטורי)

- `contractVersion`: `0.8 → 0.9`
- `PlanningInstance`: three required presentation-source fields
- `FirstPlanProjection`: typed `parentUnderstanding` and `successSignalText`
- `PreDayProjection`: parent role, child preparation, applicability, announcement when applicable, success signal, full `inTheMomentText[]`, `guardrailText`
- application-only Pre-Day visibility derivation (**הוחלף ב-v0.10**)
- v0.9 provenance and presentation integrity gates

`KG-007` remains draft and not for Engine. `KG-010` adds no repetition count or invalidation. `KG-011` keeps `SOS_12_Nodes_Bank_v1_0` blocked and non-executable. `KG-012` adds no Observation field.

---

# 66. Acceptance Gate

```text
CONTRACT VERSION: 0.10
DOMAIN SCOPE: STAGED + REGISTRY (K1–K5 MAPPED · Bank DRAFT · not implementation-ready / not active)
COVERAGE GAP: GENERALIZED · SOURCE STATES LOCKED
CONTINUITY: RESUME NULLS · FRESH BOOTSTRAP ALLOCATES childRef · IDEMPOTENT BY requestId
MUTATING COMMANDS: NON-NULL CONTEXT
CHILD PREPARATION: REQUIREMENT + ENGINE PRESENTATION STATE · NO COMPLETION TRACKING
START GATING: REQUIRED + NOT_PRESENTED
UNRESOLVED CHECK-IN: ABANDONED → PLAN_READY · NO OBSERVATION / PROGRESS
PARENT REFLECTION: PRESENTATION LAYER · NOT CANONICAL
HOME PROJECTION: H1–H4 · LEARNING_RESULT NOT HOME
PERSISTENCE: childRef + identity + canonical refs ONLY
PROFESSIONAL LOGIC CHANGED: NO
BLOCKING CONFLICTS: NONE
READY FOR v0.10 IMPLEMENTATION (integration branch v0.10): YES
```

**v0.11 RECONCILED DRAFT gate:**

```text
STATUS: DRAFT / NOT YET CANONICAL / NOT FOR IMPLEMENTATION
§4.3 / §4.4 / §24.5: GOVERNANCE-RATIFIED 03.10.2026 (released behavior) · NOT HISTORICAL APPROVAL
NEW SEMANTICS: NONE (body synchronized to released / canonical truth: §4.3–§4.4 K2 / PR-B, PR-F, REV3)
WIRE contractVersion: "0.10" (unchanged) · DOCUMENT VERSION: v0.11
NEW VOICE LOCKS: NONE · RELEASED STRINGS = RELEASED PRESENTATION VALUE ONLY
ADJUST LABEL: COPY OWNER VOICE / PRODUCT PRESENTATION · SOURCE TRACE REQUIRED
OPEN, NOT RESOLVED HERE: OD-P1-09 (FADE → recheck; PRODUCT ROUTING / COVERAGE GAP; not a REV3 semantic contradiction) · PB-01 / PB-02 (ADJUST coverage-gap routing) 
K2 BANK METADATA: RELEASED 0.6 · SOURCE v0.7 · PARENT-VISIBLE DIFFERENCE NONE FOUND · NOT BLOCKING
CODE / REPO / DRIVE INDEX CHANGES: NONE UNTIL MAIN CT ACCEPTANCE
```

---

# 67. v0.10 Delta (סיכום)

| # | שינוי | סעיף |
|---|---|---|
| 1 | `contractVersion` `0.9 → 0.10`, bump יחיד | §8, §43–§44 |
| 2 | DomainScope: שלושה שלבים, registry, K1–K5 MAPPED (D2) | §4 |
| 3 | CommandContext: nulls ב-RESUME, non-null בכל mutation | §8 |
| 4 | Bootstrap: fresh RESUME מקצה `childRef` idempotently | §8.1 |
| 5 | ContinuityResult: `+childRef`, `+scope`, revision טרי | §40 |
| 6 | CoverageGap: `coverage_gap`, phase union, מצבי מקור נעולים, `scope_resolution` | §37 |
| 7 | abandoned check-in → PLAN_READY | §40, §42 |
| 8 | Child Preparation: `childPreparationRequirement`, presentation state, `RECORD_CHILD_PREPARATION_PRESENTED`, gating של START | §15, §20, §24.2 |
| 9 | ParentReflectionProjection (presentation layer) | §24.3 |
| 10 | HomeProjection (H1–H4) | §24.4 |
| 11 | Persistence (client) | §68 |
| 12 | Forbidden tokens: `COVERAGE_GAP`, `scope_resolution` | §16 |
| 13 | K2 activation: DR-B1-01 ACTIVE; chain / terminal; `safetyStopText`; `runtimeCursor` + `REPORT_RUNTIME_NO_START`; `allowedCompletionKinds`; כלל `ifNotStart`; identity boundary; provenance. **נכנס ל-repo 27.9.2026 (PR #13). אושרר ב-governance 03.10.2026** | header, §4.2, §4.3, §5 |
| 14 | Morning moment selection: `declaredTask`, mismatch clarification, dressing = DR-B1-01 בלבד. **נכנס ל-repo 27.9.2026 (PR #16), בלי החלטת Drive. אושרר כהתנהגות משוחררת 03.10.2026** | header, §4.4 |
| 15 | Target support actions + ProgressProjection (reflection, בלעדיות FADE). **נכנס ל-repo 28.9.2026 (PR #20), בלי החלטת Drive. סמנטיקה בלבד אושררה 03.10.2026.** תוויות: ראו §24.5 | §24.5 |

## 67.1 v0.11 RECONCILED DRAFT Delta (03.10.2026)

| # | שינוי | סעיף | סוג |
|---|---|---|---|
| 1 | Header: v0.11 RECONCILED DRAFT; status; supersedes שני עותקי v0.10 אחרי קבלה; Provenance note; document version v0.11 / wire `"0.10"` | header, §43 | governance |
| 2 | Ratification banners | §4.3, §4.4, §24.5 | governance |
| 3 | Citations: Bank dressing/bag_items v0.7, KGR v0.6; `bankVersion = "0.6"` נשמר כ-RELEASED METADATA VALUE; PARENT-VISIBLE SEMANTIC DIFFERENCE: NONE FOUND; Observation v0.10 | §4.2, §4.3 | citation |
| 4 | תוויות "עדיין אין התחלה" ו-"בהמשך": RELEASED PRESENTATION VALUE, COPY OWNER VOICE / PRODUCT PRESENTATION | §4.3 item 7, §4.4 | copy de-lock |
| 5 | `progressDecisionLabel` ו-FADE copy: סמנטיקה בחוזה; מחרוזות = RELEASED PRESENTATION VALUE; RUNTIME VALIDATION: CURRENTLY EXISTS; COPY OWNER: VOICE / PRODUCT PRESENTATION; ADJUST = SOURCE TRACE REQUIRED | §24.5 | copy de-lock |
| 6 | ProgressProjection נמסר ב-`envelope.presentation` של `progress_result`; הכלל מתועד ב-envelope refinements | §24.5, §40, §44 | clarification |
| 7 | OD-P1-09: שני מסלולים נפרדים, PUBLIC PARENT PATH (RT-01, סמכותי) ו-FIXTURE / DEMO PATH (F20→F21). סיווג: PRODUCT ROUTING / COVERAGE GAP, לא סתירה סמנטית ל-REV3 | §24.5, §61 | open item |
| 8 | `SUBMIT_SCENE.payload.declaredTask: Task` | §10 | body sync |
| 9 | `startingSupportAction`, `targetSupportAction` ב-TargetProposal / ActiveTarget | §11 | body sync |
| 10 | `ProgressProjection` ב-PresentationPayload (type + zod) | §22 | body sync |
| 11 | `MORNING_TASK_MISMATCH_CLARIFICATION_REQUIRED` family; `MorningTaskMismatchClarificationRequired` type; ענף `declared_task_kept_new_description_required` | §39, §40, §41 | body sync |
| 12 | `practice_not_occurred`: family, type, member. CONTRACT SYNCHRONIZATION WITH EXISTING CANONICAL / RELEASED TRUTH (REV3 §9) | §39, §40, §41 | body sync |
| 13 | K2 body types: `InterventionId` (+DR-B1-01), `SETUP-DR-CLOTHES-ORDERED`, `post_measurement_completion`, terminal `action`, `RuntimeCursor`, `resolvedPostMeasurementCompletion`, `resolvedGuardrail` nullable | §12, §15, §16.1 | body sync |
| 14 | `REPORT_RUNTIME_NO_START` (command, name, action id); `EndRuntimeCompletionKind` + `stop_measurement`; `AllowedNextAction.allowedCompletionKinds` | §5, §10 | body sync |
| 15 | `safetyStopText` ב-First Plan / Pre-Day / Runtime; `guardrailText` nullable; Runtime `ifNotStart` בלי `.min(1)` | §19–§21 | body sync |
| 15a | Forbidden tokens: `DR-B1-`, `STOP_MEASUREMENT`, `post_measurement` (§4.3 item 12). פער מול רשימת ה-runtime נרשם, לא הוכרע | §16 | body sync · divergence recorded |
| 16 | `ObservableAnswer.multi_choice`; מודל דוח ה-check-in ו-refinements של REV3 | §9, §9.1 | body sync · REV3 |
| 17 | Observation: הסרת `skipped_setup`; `invalidReason` +`cue_not_received` +`planned_change_response` +`opportunity_unknown`; `practiceAsPlanned`, `contextFacts`, `cueResetAfterSeen`, `ranDifferentPlan`; refinements; גזירת evidence usability | §28 | body sync · REV3 |
| 18 | ProgressSnapshot `ruleFiveWindowRefs`; כללי provenance; Rule 5; measured attempt | §30 | body sync · REV3 |
| 19 | `PendingCheckin.status = no_practice` וכלל הסגירה | §42 | body sync · REV3 |
| 20 | Envelope refinements E1–E7 המשוחררים | §44 | body sync |
| 21 | Presence: `practice_not_occurred` → null; observation / progress / mismatch | §45 | body sync · REV3 |
| 22 | Type registry לכל התוספות המשוחררות | §58 | body sync |
| 23 | Transitions: ניתוב Target Observation, `practice_not_occurred`, mismatch, `keep_declared_task`, `REPORT_RUNTIME_NO_START`, `stop_measurement`, ADJUST coverage gap (LH + K2), recheck | §61 | body sync |
| 24 | Invariants #29, #30, #32, #33, #34 הוחלפו; R1–R12 של REV3 נוספו | §62 | body sync · REV3 |
| 25 | §63: הוסרה הדרישה ש-`bankVersion` יזהה את סט v0.9; metadata משוחרר מתועד; §7.1 קיבל הערת sync | §7.1, §63 | maintenance |
| 26 | §65 v0.11 boundary; §66 v0.11 draft gate; §67 שורות 13–15; טבלה זו | §65–§67 | maintenance |

**Not changed (רשום ונשאר כמו שהוא):** מספור כפול של invariants 49–52 ב-§62 (קיים מ-v0.9); הקטעים ההיסטוריים של v0.9 / v0.10 ב-§65–§67.

---

# 68. Client Continuity Persistence (v0.10)

| נושא | כלל |
|---|---|
| Adapter | `ContinuityStore { load(); save(s); clear() }` מעל `localStorage` |
| **נשמר** | `childRef` · identity לרינדור (`childName`, `grammaticalForm`, `parentRelationship`) · refs קנוניים (`targetRef`, `planningInstanceRef`, `attemptSessionRef`, `pendingCheckinRef`, `observationRef`) |
| **לא נשמר** | `stateRevision` · `applicationState` · `scope` · טקסט Reflection, Home, Planning או Runtime · `allowedNextActions` · `interventionId` |
| Revision | בזיכרון ה-controller בלבד. מתקבל מ-RESUME ומכל envelope בסטטוס `ok` |
| Bootstrap | `requestId` של bootstrap נשמר עד שמתקבלת תשובה מוצלחת, ומשמש ל-retry. `childRef` נשמר מיד אחרי ההצלחה |
| מפתח | `maabadat.continuity` + `schemaVersion: 1` |
| כשל בקריאה | `clear()` → RESUME עם `childRef: null` |
| `REF_INTEGRITY_ERROR` / `SCHEMA_MISMATCH` ב-RESUME | `clear()` ו-bootstrap. תקלת רשת: לא מוחקים |
