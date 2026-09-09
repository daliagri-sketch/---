# ניהול האתר daliagrinbaum.co.il
ענה בעברית, בקצרה ולעניין.

## חיבור
בסיס ה-API: https://daliagrinbaum.co.il/wp-json
אימות: Basic Auth עם WP_USERNAME + WP_APP_PASSWORD מתוך .env
אין cPanel ואין FTP — ה-REST API הוא ערוץ הגישה היחיד.
תמיד שלח כותרת User-Agent: Mozilla/5.0 — בלעדיה Cloudflare חוסם (שגיאה 1010).
השתמש ב-Python עם PYTHONIOENCODING=utf-8, לא ב-curl. curl הורס עברית.

## תוספים
WooCommerce 11.1 (wc/v3) | LearnDash 5.0.5 (ldlms/v2) | Elementor Pro 4.2
Code Snippets 3.10 (code-snippets/v1) | Yoast 28.4 | SpeedyCache Pro 1.4
⛔ WP Rocket מושבת בכוונה — אין להפעיל מחדש.
בכל תוסף קאש: page cache בלבד. בלי minify, בלי combine, בלי דחיית JS —
דחיית JS שוברת את פיקסל המעקב ואת טפסי Elementor.

## תוכן קיים
קורס "מחוברים לחיים – אתגר זוגי 7 ימים" = 27389, שיעורים 27391-27397 (ימים 1-7).
קורסים נוספים: 4904 זוגיות של ממ"ש, 6239 הורות.
עמודי האתגר הציבוריים challenge-day-1, yom2, 3day, 4yom, 5day5, day6, connected
חיים ומקושרים ממיילים וממודעות — אין לגעת בהם בלי בקשה מפורשת.

## מלכודות
1. ldlms/v2 מפרסם פוסט אם לא ציינת status. תמיד כלול status מפורש בכל כתיבה.
2. אחרי שינוי _elementor_data חובה למחוק שלושה מטא, אחרת הדף מציג גרסה ישנה:
   _elementor_element_cache, _elementor_css, _elementor_page_assets
3. אי אפשר לכתוב עיצוב Elementor לשיעורי LearnDash דרך REST — רק סניפט PHP,
   ובכתיבה חובה wp_slash() אחרת ה-JSON נהרס.
4. יצירת שיעור דרך wp/v2 נכשלת. השתמש ב-ldlms/v2.
5. שיוך שיעור לקורס לא עובד דרך ה-API — רק דרך PHP.
6. סניפט single-use רץ פעם אחת בלבד. מחיקה דרך REST מחזירה 500.
7. wp_json_encode הופך עברית ל-\uXXXX — חפש לפי מחרוזות באנגלית.

## כללי בטיחות
גבה לפני שינוי. צור תוכן חדש כטיוטה. אל תיגע בעמודים קיימים בלי בקשה.
בדוק שהאתר מחזיר 200 אחרי כל שינוי בקוד. דווח מה נעשה בפועל.
אל תשנה משתמשים, הרשאות, תוספים או הגדרות תשלום בלי אישור מפורש.
