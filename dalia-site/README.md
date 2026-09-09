# סביבת עבודה — daliagrinbaum.co.il

## התקנה במחשב שלך (Windows)
1. הורידי את `setup.ps1` מהתיקייה הזו.
2. פתחי PowerShell והריצי:
   ```
   powershell -ExecutionPolicy Bypass -File .\setup.ps1
   ```
   הסקריפט יוצר את `C:\Users\<שם המשתמש>\dalia-site` ובתוכה `.env`, `CLAUDE.md`, `wp.py` ותיקיית `backups`.
3. פתחי את `.env` והדביקי במקום ה-placeholder את **סיסמת האפליקציה** (Application Password)
   של המשתמש `dalia` — נוצרת בוורדפרס: משתמשים → פרופיל → Application Passwords.
   הרווחים בסיסמה לא מפריעים, הסקריפט מסיר אותם.
4. בדיקת חיבור:
   ```
   python wp.py check
   ```

## התקנה עם git (חלופה)
```
git clone <repo> %USERPROFILE%\dalia-site
cd %USERPROFILE%\dalia-site
copy .env.example .env
python wp.py check
```

## הקבצים
| קובץ | תפקיד |
|---|---|
| `CLAUDE.md` | הנחיות העבודה על האתר — נטען אוטומטית ע"י Claude Code בתיקייה הזו |
| `.env` | פרטי חיבור. **לא נשמר ב-git** |
| `.env.example` | תבנית ל-.env |
| `wp.py` | גישה ל-REST API: User-Agent, Basic Auth, UTF-8 |
| `backups/` | גיבויים לפני שינויים |

## פקודות wp.py
```
python wp.py check                          חיבור + ספירת עמודים, פוסטים, מוצרים, קורסים, שיעורים
python wp.py count wc/v3/products           ספירה בראוט מסוים
python wp.py get wp/v2/pages?per_page=5     קריאת JSON גולמי
```
