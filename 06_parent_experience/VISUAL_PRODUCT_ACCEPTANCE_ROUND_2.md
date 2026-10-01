# Visual / Product Acceptance Round 2 · Parent Journey

**תאריך:** 01.10.2026
**תפקיד:** 06 · Parent Experience Reviewer
**Build שנבדק:** `32c49d6` (ה־Production baseline המאושר, RELEASE_RECORD_MORNING_2026-09-29). רץ מקומית ב־390×844 ובבדיקה נקודתית ב־320×568, מקצה לקצה דרך ה־UI, בלי לקפוץ ישר למסכים.
**מסלולים שנבדקו:** PROCEED מלא · Clarification → Capability Probe · Environment First · Coverage Gap (לבוש) · ADJUST (`?fixture=ADJUST`) · FADE (`?fixture=FADE`) · Safety (`?fixture=SAFETY_INPUT&sample=stop`) · חזרה לאפליקציה אחרי Pre-Day.

---

## 0. פערי מקור. לקרוא לפני הממצאים

1. **גרסה.** ההנחיה (24.09) מתייחסת ל־"v0.9 build, 460/460 tests". ה־baseline המאושר העדכני הוא `32c49d6`: 1123/1123 tests וחוזה v0.10. בדקתי אותו. אם הכוונה הייתה ל־build אחר, צריך להצביע עליו.
2. **`main` ≠ baseline.** ה־HEAD של `main` הוא `26e77c9`. לא בדקתי אותו.
3. **Check-in.** ב־build עדיין המבנה הישן (Q1–Q3), לא Option B (G1–G5). זה תואם ל־PROJECT_WORK_PLAN (המימוש עוד לא התחיל), ולכן Check-in נבדק כמו שהוא קיים היום.
4. **המנוע הוא Fixture Engine.** תוצאות Progress מגיעות מתרחישים קבועים מראש, לא ממה שההורה דיווח. לכן אי אפשר לאשר Learning Traceability ב־build הזה (ראו מסך 15).
5. **מסמכים שלא היו לי:** `SAFETY_GATE_MASTER_SPEC`, `FIRST_PLAN_CARD_CONTENT_SPEC_v0_4`, `PRE_DAY_PARENT_CARD_SPEC_v0_4`. בדקתי מול ה־handoffs של 06, מול יומן ההחלטות ומול מסמך ה־Acceptance.

---

## 1. השורה התחתונה

**הורה אמיתי שמתאר את הבוקר שלו במילים שלו לא מגיע היום לתכנית.**

- המסך שואל על **"הפעם האחרונה"**, כלומר על אירוע אחד. אבל PROCEED דורש **שני** בקרים רגילים, ובכל אחד מהם צירוף מדויק: "פעם אחת" + "הלך לדלת" + "בלי שאמרתי שוב". כל תיאור טבעי מסתיים ב־Clarification ואז ב־Probe.
- ה־Probe לא נותן להורה שום הוראה. הכפתור "לבדיקה הקצרה" שומר מיד תוצאת בדיקה (`started-after-one-cue = true`, ערך ברירת מחדל) ומחזיר את אותו מסך. זו לולאה בלי יציאה.
- תיאור טבעי שכולל את המילה "להתלבש" מסתיים ב־Coverage Gap.

המסלול הראשי (PROCEED) עובד ונראה טוב, כשמזינים טקסט מותאם. הוויזואל קרוב מאוד ל־handoff. הבעיות הן ב־flow וב־continuity.

---

## 2. מסך אחר מסך

### 1 · Welcome
**PURPOSE:** כניסה. "מה זה ומה אני עושה עכשיו".
**WHAT WORKS:** H1 חזק, CTA אחד, הצהוב היחיד הוא ה־CTA, פס Ink. תואם ל־3.7.
**PROBLEM:** הקישור "היום" בכותרת מופיע לפני שיש תכנית או "היום".
**PARENT EXPERIENCE:** מבין בתוך 2 שניות. "היום" מסיח.
**RECOMMENDED DELTA:** להסתיר את "היום" עד שקיים Planning Instance.
**SEVERITY:** POLISH
**KEEP:** כל הטקסט וההיררכיה.

### 2 · מסך אמון ("לפני שבונים תכנית…")
**PURPOSE:** להסביר את הגישה לפני שאלות.
**WHAT WORKS:** קצר. שלוש שורות מקבילות.
**PROBLEM:** המסך לא מופיע ב־Journey שבהנחיה. הוא עוד הקשה אחת לפני שההורה מתחיל לתאר.
**PARENT EXPERIENCE:** קורא ועובר הלאה. לא מזיק, אבל ההורה עובר כאן 6 מסכים לפני שהוא כותב משפט אחד (Welcome → אמון → ילד → רגע → מצב → תיאור).
**RECOMMENDED DELTA:** אין שינוי בסבב הזה. לסמן לבדיקת אורך ה־Entry אחרי סגירת B2 (Entry FROZEN v1).
**SEVERITY:** POLISH
**KEEP:** הטקסט.

### 3 · Child Setup
**PURPOSE:** שם וגיל.
**WHAT WORKS:** שני שדות, גילאים 4–7 בלבד, CTA מושבת עד שממלאים.
**PROBLEM:** אין.
**PARENT EXPERIENCE:** ברור.
**RECOMMENDED DELTA:** —
**SEVERITY:** —
**KEEP:** טווח הגילאים הסגור.

### 4 · בחירת רגע + בחירת מצב
**PURPOSE:** לבחור זירה ומצב לפני התיאור.
**WHAT WORKS:** "בהמשך" (שינה, מסכים…) מוצג כלא פעיל, כמו שצריך.
**PROBLEM:**
(א) **"לבוש" פעיל ונבחר, ותמיד מסתיים ב־"אין עדיין תכנית מתאימה".** המוצר מציע אפשרות שהוא כבר יודע שאין לה המשך.
(ב) הבחירה במסך המצב ("הילד ממשיך במה שהוא עושה…") לא מופיעה בשום מקום אחר כך. ההורה עושה עבודה שלא חוזרת אליו.
**PARENT EXPERIENCE:** הורה שבוחר "לבוש" מגיע לסוף דרך אחרי 4 מסכים, ומרגיש שבזבז זמן.
**RECOMMENDED DELTA:** להציג את "לבוש" במצב לא פעיל, כמו "מה לוקחים", כל עוד אין לו כיסוי ב־public flow. זה שינוי presentation בלבד: הכיסוי עצמו לא משתנה.
**SEVERITY:** IMPORTANT
**KEEP:** "בהמשך" כרשימה לא פעילה.

### 5 · Open Description
**PURPOSE:** קלט פתוח.
**WHAT WORKS:** שאלה אחת, textarea, רמז מה לכתוב, שם הילד בפס ההקשר.
**PROBLEM:** השאלה מבקשת **אירוע אחד** ("מה קרה בפעם האחרונה?"), אבל רף ה־PROCEED דורש **שני** אירועים רגילים. לכן הורה שעונה בדיוק על מה שנשאל לא יכול להגיע ישר לתכנית. בנוסף, המילה "להתלבש" בתיאור של יציאה מהבית ("לא מוכן להתלבש ולצאת") מסתיימת ב־Coverage Gap.
**PARENT EXPERIENCE:** עונה בכנות ונשלח לבירור. לא יודע למה.
**RECOMMENDED DELTA:** אין delta של UI. **זו סתירה בין ניסוח השאלה לבין רף ה־Capability** (ראו סעיף 4). לא נוגעים ברף.
**SEVERITY:** BLOCKER (flow). ההחלטה אצל Product.
**KEEP:** קלט פתוח + מנוע סגור.

### 6 · Clarification
**PURPOSE:** לשאול על נתון אחד שמשנה את ההחלטה.
**WHAT WORKS:** שאלה אחת, ממוקדת.
**PROBLEM:**
(א) השאלה מופיעה פעמיים: גם כ־H1 וגם כ־label מעל השדה.
(ב) זו שאלת כן/לא, אבל התשובה היא שדה טקסט חופשי. הורה שכותב "כן, אתמול זה עבד" מגיע למסך שאומר "עוד לא ראינו איזו עזרה מספיקה". התשובה שלו נעלמה.
**PARENT EXPERIENCE:** "ענית כן, ואמרו לי שלא". זה הרגע שבו ההורה מפסיק לסמוך על המערכת.
**RECOMMENDED DELTA:** label אחד בלבד. מתחת לשדה, שורת רמז שמראה שצריך לתאר בוקר מסוים (מה אמרת, פעם אחת, מה קרה). זה presentation בלבד, אבל הנוסח שייך ל־Voice.
**SEVERITY:** IMPORTANT
**KEEP:** clarification אחת.

### 7 · Capability Probe
**PURPOSE:** להגיד להורה מה לבדוק, איך, ומתי לחזור.
**WHAT WORKS:** —
**PROBLEM:** **אין מסך Probe.** "לבדיקה הקצרה" שולח מיד `SUBMIT_CAPABILITY_PROBE_RESULT` עם `value: true` (ברירת המחדל ב־`EngineApplicationController.ts:290`) ומציג "הבדיקה נשמרה." מעל אותו Initial Picture עם אותו CTA. בכל לחיצה זה חוזר על עצמו.
**PARENT EXPERIENCE:** לא יודע מה לבדוק. לוחץ, מקבל "נשמרה", ונשאר באותו מקום.
**RECOMMENDED DELTA:**
(1) אסור ש־UI ישלח evidence בלי קלט מההורה. זה תיקון ב־controller, לא בלוגיקה מקצועית.
(2) מסך Probe שמציג את הוראת הבדיקה **ממקור מאושר בלבד**. אם אין מקור כזה: fail closed, בלי לכתוב הוראה.
**SEVERITY:** BLOCKER
**KEEP:** Probe נשאר Assessment flow, לא Target Attempt.
*אותו דפוס בדיוק קיים ב־Environment First ("מה משנים קודם" → "הבדיקה נשמרה" → לולאה).*

### 8 · Initial Picture
**PURPOSE:** "שמעו אותי, וזה הצעד הבא".
**WHAT WORKS:** ציר הזמן (3.1), "ממה שסיפרת" עם המילים של ההורה, statement ב־Karantina, נקודה אחרונה ב־Ink.
**PROBLEM:** אחרי FADE (Recheck) ההורה מקבל שוב את אותו מסך, עם הטקסט שכתב ביום הראשון. זה נראה כמו התחלה מחדש.
**PARENT EXPERIENCE:** במסלול הראשון: מצוין. ב־Recheck: "חזרתי להתחלה?"
**RECOMMENDED DELTA:** ב־Recheck לא להציג את "ממה שסיפרת" מה־intake המקורי. אם אין projection מתאים, להשמיט את הבלוק.
**SEVERITY:** IMPORTANT (במסלול FADE)
**KEEP:** מבנה ציר הזמן.

### 9 · First Plan
**PURPOSE:** ההורה מבין מה הילד יודע, איפה זה נעצר, מה משתנה בעזרה ומה התפקיד שלו.
**WHAT WORKS:** עונה על חמש השאלות:
- מה הילד יודע → "כבר ברור שיוצאים ולאן הולכים"
- איפה זה נעצר → "כשצריך לעזוב את הפעילות וללכת לדלת"
- מה לומד עכשיו → ה־hero
- מה משתנה בעזרה → "השעון יכול להחליף את המילה"
- מה עושים אם לא זז → כרטיס "אם עדיין אין התחלה"

אין מספרי מדרגות ואין enums. צהוב רק ב־CTA.

**PROBLEM:**
(א) **מדרגות ההסלמה מפוצלות.** בכרטיס מופיע רק שלב 1. שלבים 2–3 מוסתרים ב־"פרטים נוספים לתכנית", תחת אותה כותרת בדיוק. הורה שלא פותח את ה־disclosure חושב שיש שלב אחד.
(ב) ה־hero ("על מה עובדים") ובלוק "מה מסתכלים לראות" אומרים כמעט אותו משפט.
(ג) "ההכרזה" מוזכרת כאן בלי שנאמר מה היא. המילים עצמן מופיעות רק ב־Pre-Day.
(ד) בלוק התמיכה הגנרי (HOLD) סותר את התכנית. ראו סעיף 4.
**PARENT EXPERIENCE:** מבין את הרעיון. יכול לפספס שיש שלבים 2–3.
**RECOMMENDED DELTA:** כל שלושת השלבים של "אם עדיין אין התחלה" בכרטיס אחד, כפי שזה כבר בנוי ב־Pre-Day וב־Runtime. ה־disclosure משאיר רק את "מה להכין", "המשך הפעולה" ו"מה לא לעשות".
**SEVERITY:** IMPORTANT
**KEEP:** ארבעת רכיבי Parent Understanding, הסדר שלהם, ה־hero ב־beige.

### 10 · Child Preparation
**PURPOSE:** משפט לילד + היכרות עם שעון החול לפני הניסיון הראשון.
**WHAT WORKS:** בלוק beige אחד ו־CTA אחד. אין ספירה ואין checkbox. מופיע אחרי First Plan ולפני Pre-Day.
**PROBLEM:** פסקה אחת שמחזיקה שני דברים שונים: מה אומרים, ומה עושים בזמן רגוע. לכל אחד זמן אחר.
**PARENT EXPERIENCE:** צריך לקרוא פעמיים כדי להפריד בין "להגיד" לבין "לתרגל".
**RECOMMENDED DELTA:** אם ה־projection מספק את הרכיבים בנפרד: שתי שורות עם label לכל אחת. אם מגיע string אחד: להשאיר כמו שהוא. אסור לפרק טקסט ב־UI.
**SEVERITY:** POLISH
**KEEP:** התוכן, ההופעה רק לפני הניסיון הראשון, אין מספר חזרות.

### 11 · Pre-Day
**PURPOSE:** הכנה, לא הסבר.
**WHAT WORKS:** "מה מכינים" עם checklist, "מה אומרים מראש" ב־Karantina, "מה עושים ברגע עצמו" ממוספר, ו־"מה לא עושים" / "אם זה לא מספיק" כ־disclosures. אפשר לענות בתוך 10 שניות על "מה להכין".
**PROBLEM:**
(א) **ה־CTA "מתחילים" מוביל מיד ל־Runtime.** בערב. הורה שלוחץ "מתחילים" אחרי שסיים להכין רואה "עכשיו: ההורה אומר את ההכרזה", ואם ילחץ "סיום הניסיון" ייווצר ניסיון בלי בוקר.
(ב) "התפקיד שלך" הוא אותו טקסט מ־First Plan, מילה במילה. זה בדיוק "קרא שוב את First Plan".
(ג) "מה אומרים מראש" לא מקושר למונח "ההכרזה" שמופיע שלוש שורות למטה.
(ד) H1 הוא "התכנית של הערב" ויש eyebrow. ב־handoff (3.6) כתוב "הערב ומחר בבוקר" ושאין eyebrow.
**PARENT EXPERIENCE:** יודע מה להכין. לא יודע מה לעשות עכשיו, בערב. ה־CTA אומר "להתחיל".
**RECOMMENDED DELTA:** ה־CTA של Pre-Day מוביל ל־Home/Today, לא ל־`START_RUNTIME_ATTEMPT`, וה־label שלו לא אומר "מתחילים". את הנוסח קובע Voice. התחלת Runtime רק מ־Home.
**SEVERITY:** BLOCKER על (א). IMPORTANT על (ב) ו־(ג). POLISH על (ד).
**KEEP:** Child Preparation בתוך Pre-Day לפני הניסיון הראשון, הסדר, ה־disclosures.

### 12 · Home / Today
**PURPOSE:** נקודת חזרה. "מה היום".
**WHAT WORKS:** מופיע אחרי חזרה לאפליקציה, עם אותה מטרה ואותו תפקיד. CTA ראשי אחד.
**PROBLEM:**
(א) **ב־flow הרגיל אי אפשר להגיע אליו.** Pre-Day מדלג עליו, וגם KEEP. הקישור "היום" לא עובד בזמן Runtime.
(ב) שם הילד נעלם מפס ההקשר אחרי חזרה ("בוקר · יציאה מהבית").
(ג) "היום יש תכנית חדשה", אבל זו אותה תכנית.
(ד) ה־statement ב־sans מודגש ולא ב־Karantina.
**PARENT EXPERIENCE:** אחרי חזרה נראה שזו תכנית אחרת, בלי השם של הילד.
**RECOMMENDED DELTA:** לחבר את Home כיעד של Pre-Day ושל KEEP. להשתמש ב־identity resolution גם ב־Home. לסמן את "תכנית חדשה" ל־Voice.
**SEVERITY:** IMPORTANT
**KEEP:** CTA ראשי אחד ל־Runtime.

### 13 · Runtime
**PURPOSE:** מה לעשות עכשיו, בתוך 3 שניות.
**WHAT WORKS:** כרטיס "עכשיו" צהוב ויחיד, נראה ב־320×568, אין Parent Understanding, אין Child Preparation, שני disclosures נפרדים, אין CTA ראשי.
**PROBLEM:**
(א) **"ההורה אומר את ההכרזה", אבל ההכרזה עצמה לא מופיעה.** ברגע עצמו ההורה צריך את המילים ("עוד עמוד אחד ואז דלת. כשהחול נגמר."), והן נמצאות רק ב־Pre-Day. ב־`RuntimeProjection` אין שדה `announcementText`.
(ב) "עדיין אין התחלה" מושבת בלי שום סימן לכך שזה בגלל ההמתנה ובלי ספירה לאחור. ההורה לא יודע אם זה תקלה.
(ג) בלוק התמיכה הגנרי ("אצבע על הפריט… כרטיס תמונות") תופס את המקום השני במסך וסותר את "בלי מילה".
(ד) הלוגו הופך כאן לריבוע "ת·ה", בניגוד לשאר המסכים.
**PARENT EXPERIENCE:** יודע שצריך להכריז, לא זוכר מה. בלחץ זה בדיוק המקום שבו אומרים משפט אחר.
**RECOMMENDED DELTA:** (א) דורש שדה ב־projection. **UI לא משחזר את המשפט מ־Pre-Day.** (ב) hint אחד מתחת לכפתור המושבת, בסגנון של `REQUIRED_HINT`, בלי מספר שלא מגיע מהחוזה. (ד) לוגו אחיד.
**SEVERITY:** BLOCKER על (א). IMPORTANT על (ב). POLISH על (ד).
**KEEP:** אין CTA ראשי, ה־disclosures נפתחים כשההמתנה נגמרת, אין fallback.

### 14 · Post-attempt Check-in
**PURPOSE:** עובדות, לא הצלחה או כישלון.
**WHAT WORKS:** בלוק עוגן "מה חיפשנו לראות", שורות במקום כרטיסים, `cannot_recall` עם radio מקווקו, CTA מושבת עד שעונים.
**PROBLEM:**
(א) Q1 "האם זה קרה? כן / לא" נקרא כציון.
(ב) אפשרויות שהן קטעי copy ולא תיאור: "דלת." כאפשרות שלמה, ו"ההורה אומר את ההכרזה… מכאן ההורה לא אומר דבר." כאפשרות אחרת.
(ג) "המשיך, אבל לא עמד בקריטריון הביצוע" הוא metadata ולא שפה של בית.
(ד) "ההכנה מראש לא קרתה" (`skipped_setup`) עדיין ב־Q3. ביומן ההחלטות (§12) הוחלט להוציא אותה, אבל זה עוד לא מומש.
**PARENT EXPERIENCE:** מצליח לענות, אבל בשאלה השנייה צריך לפענח מה זה "דלת.".
**RECOMMENDED DELTA:** ייסגר במימוש Option B. עד אז: לא לשנות. הנוסחים ל־Voice.
**SEVERITY:** IMPORTANT
**KEEP:** העוגן, `UNKNOWN` בכל קבוצה, אין tint ל"לא נספר".

### 15 · "הניסיון נשמר" (Parent Reflection) → Learning Result
**PURPOSE:** מה קרה → מה למדנו → מה עכשיו.
**WHAT WORKS:** כותרות ההחלטה בשפת בית ("ממשיכים ככה", "משנים את התכנית", "בודקים את הצעד הבא"). אין enums.
**PROBLEM:**
(א) **סתירה בין שני מסכים רצופים.** מסך הביניים אומר "מחר עושים בדיוק אותו דבר." (`reflectionBank` `held.at_target`), ומיד אחריו ADJUST אומר "משנים את התכנית" ו־FADE אומר "היעד נסגר".
(ב) KEEP אחרי **ניסיון ראשון ומוצלח** אומר "בבקרים שנספרו התמונה עדיין מעורבת". זה לא נכון להורה הזה. המקור הוא fixture, לא הדיווח שלו.
(ג) בציר הזמן של KEEP הצומת "עכשיו" ריק, והטקסט יושב מחוץ לציר. זה באג layout.
(ד) ה־CTA הראשי "מה עושים עכשיו" פותח Runtime מיד. אותה בעיה כמו ב־Pre-Day.
**PARENT EXPERIENCE:** "אמרו לי אותו דבר מחר, ואז אמרו לי שמשנים."
**RECOMMENDED DELTA:** לא להציג משפט על "מחר" לפני ש־Progress קיים, או להציג את ה־Reflection אחרי ה־Learning Result. תיקון הצומת הריק. CTA ל־Home.
**SEVERITY:** BLOCKER על (א). IMPORTANT על (ג) ו־(ד). את (ב) אי אפשר לתקן ב־UI (סעיף 4).
**KEEP:** אין scores, streaks או מספרים.

### 16 · ADJUST → Coverage Gap
**PURPOSE:** היעד נשמר, אין תכנית חלופית מאושרת.
**WHAT WORKS:** fail closed. אין fallback ואין copy גנרי.
**PROBLEM:** **אין שום CTA.** המסך הוא סוף דרך. נשאר רק הקישור "היום" בכותרת, שבזמן Runtime לא הוביל לשום מקום.
**PARENT EXPERIENCE:** "ומה עכשיו?" אין תשובה ואין לאן ללכת.
**RECOMMENDED DELTA:** כפתור ניווט אחד, חזרה ל־Home, בלי תוכן. מה ההורה עושה מחר הוא פער מקצועי (סעיף 4). UI לא ממלא אותו.
**SEVERITY:** BLOCKER
**KEEP:** אין fallback.

### 17 · FADE → Recheck
**PURPOSE:** היעד נסגר, בודקים צעד הבא.
**WHAT WORKS:** הטקסט ברור ומכבד.
**PROBLEM:** "בדיקת הצעד הבא" מחזיר ל־Initial Picture עם התיאור מיום 1 (ראו מסך 8).
**SEVERITY:** IMPORTANT
**KEEP:** אין נקודות ואין סטטיסטיקה.

### 18 · Coverage Gap (intake)
**WHAT WORKS:** "לא נציע כאן משהו כללי רק כדי לתת תשובה." ישר וטוב. יש CTA.
**PROBLEM:** מגיעים לכאן בקלות רבה מדי (מסך 4 ומסך 5).
**SEVERITY:** IMPORTANT (נגזר ממסכים 4 ו־5)

### 19 · Safety
**PURPOSE:** עצירה.
**WHAT WORKS:** עוצר. לא בונה תכנית. מחליף את ה־flow.
**PROBLEM:** אחרי "סיפר שהגננת מרביצה לו" ההורה מקבל "מה שתיארת חורג ממה שמעבדת העצמאות יודעת לתת בו מענה" ו־"חזרה להתחלה". אין שום כיוון. ה־CTA מזמין להיכנס שוב לאותו flow.
**PARENT EXPERIENCE:** נדחה. בדיוק ברגע הכי רגיש.
**RECOMMENDED DELTA:** לא כותב fallback. **צריך לאמת מול `SAFETY_GATE_MASTER_SPEC`** (לא היה לי) אם נדרשת שורת הפניה. אם נדרשת, ה־build חסר אותה. אם לא נדרשת, זה פער של בעל Safety. label ה־CTA ל־Voice.
**SEVERITY:** IMPORTANT, עד שנבדק מול ה־spec.
**KEEP:** Safety גובר, fail closed.

---

## 3. בדיקות מיוחדות

| בדיקה | תוצאה |
|---|---|
| First Plan: 5 שאלות | עובר. שלבי ההסלמה מפוצלים |
| Pre-Day: מה להכין / לומר / לעשות / לא לעשות | עובר בתוכן. נכשל ב־CTA (מתחיל Runtime בערב) |
| Runtime: מה לעשות בתוך 3 שניות | נכשל: הפעולה ברורה, המילים חסרות |
| Check-in: עובדות ולא הצלחה/כישלון | חלקי. Q1 נקרא כציון. Option B יפתור |
| Learning: מה עושים מחר | נכשל: שני מסכים רצופים סותרים |
| Compression (First Plan > Pre-Day > Runtime) | עובר: 1634 → 2182 (עם הכנה) → 886 px. Pre-Day ארוך יותר מ־First Plan בגלל חזרה מילולית |
| Continuity | חלקי. חזרה → אותה תכנית, בלי שם הילד |
| Non-PROCEED (Clarification → Probe) | נכשל: לולאה |

---

## 4. סתירות שדורשות בעלים אחרים. לא מוצע פתרון

1. **ניסוח Open Description מול רף Capability.** המסך מבקש אירוע אחד, הרף דורש שתי תצפיות רגילות. ה־extractor מזהה רק צירופים מדויקים. התוצאה: תיאור טבעי לעולם לא מגיע ל־PROCEED. *נחשף ב:* מסכים 5–7. *בעלים:* Product + Intake.
2. **בלוק התמיכה הגנרי (HOLD)** ב־First Plan, Pre-Day ו־Runtime: "לא מדבר. סימן אחד: אצבע על הפריט, טיימר שמופעל, כרטיס תמונות". זה סותר את LH-B2-02 (שעון חול בלבד, וההסלמה הראשונה היא "דלת." בקול). *בעלים:* Professional.
3. **Runtime בלי ההכרזה.** ב־`RuntimeProjection` אין `announcementText`, ולכן התיקון דורש שינוי חוזה. *בעלים:* Contract.
4. **Learning Traceability.** Progress מגיע מ־fixture ולא מהדיווח ("מעורבת" אחרי בוקר מוצלח אחד). אי אפשר לאשר traceability. *בעלים:* Engine.
5. **ADJUST בלי תכנית חלופית:** מה ההורה עושה מחר? *בעלים:* Professional (KG).
6. **קול:** "ההורה" בגוף שלישי לצד "שלך" בגוף שני, גם ב־Runtime ("עכשיו: ההורה אומר…"). *בעלים:* Voice.

---

## 5. הכרעה

```text
VISUAL ACCEPTANCE: PASS
PRODUCT FLOW ACCEPTANCE: REVISE
CONTENT ACCEPTANCE: REVISE

PROFESSIONAL LOGIC CHANGE REQUIRED: NO
CONTRACT CHANGE REQUIRED: YES (RuntimeProjection חסר announcementText. סעיף 4.3)

UI-ONLY BLOCKERS:
1. Probe / Environment First: הכפתור שולח evidence בלי קלט מההורה ונכנס ללולאה. אין מסך הוראה.
2. Pre-Day "מתחילים" ו־KEEP "מה עושים עכשיו" פותחים Runtime מיד. צריך לנתב ל־Home/Today.
3. "מחר עושים בדיוק אותו דבר" מוצג לפני Progress וסותר ADJUST/FADE.
4. ADJUST → Coverage Gap: מסך בלי שום CTA.
5. First Plan: מדרגות "אם עדיין אין התחלה" מפוצלות בין כרטיס לבין disclosure.

NON-BLOCKING POLISH:
1. "לבוש" פעיל במסך בחירת הרגע ותמיד מוביל ל־Coverage Gap.
2. Clarification: השאלה כפולה (H1 + label), ואין רמז למבנה התשובה.
3. Home: שם הילד נעלם, "תכנית חדשה" על אותה תכנית, statement לא ב־Karantina.
4. Runtime: כפתור "עדיין אין התחלה" מושבת בלי הסבר. לוגו לא אחיד.
5. Learning KEEP: צומת "עכשיו" ריק בציר הזמן. Pre-Day: H1 ו־eyebrow לא לפי ה־handoff.

FINAL RECOMMENDATION:
ONE UI REVISION BUILD REQUIRED
```

ה־Revision Build לבדו לא יספיק כדי להכריז על B2 כגמור. סעיף 4.1 (הורה לא מגיע לתכנית) ו־4.3 (ההכרזה ב־Runtime) צריכים החלטה של Product ו־Contract במקביל.
