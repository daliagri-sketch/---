# check-about.ps1 - אימות READ ONLY של https://daliagrinbaum.co.il/אודות/
# לא משנה כלום באתר. Fetch אנונימי בלבד.
# הרצה:  powershell -ExecutionPolicy Bypass -File .\check-about.ps1
$ErrorActionPreference = 'Stop'
try { [Console]::OutputEncoding = [Text.Encoding]::UTF8 } catch {}

$url = 'https://daliagrinbaum.co.il/%D7%90%D7%95%D7%93%D7%95%D7%AA/'
$hdr = @{ 'Cache-Control' = 'no-cache'; 'Pragma' = 'no-cache' }

Write-Host ''
Write-Host ('URL: ' + $url)
Write-Host ('זמן הבדיקה (UTC): ' + [DateTime]::UtcNow.ToString('yyyy-MM-dd HH:mm:ss'))
Write-Host ''

try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 } catch {}

try {
  $r = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent 'Mozilla/5.0' -Headers $hdr -TimeoutSec 60
} catch {
  Write-Host ('בקשה עם כותרות no-cache נכשלה, מנסה בלעדיהן: ' + $_.Exception.Message)
  $r = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent 'Mozilla/5.0' -TimeoutSec 60
}
try   { $html = [Text.Encoding]::UTF8.GetString($r.RawContentStream.ToArray()) }
catch { $html = $r.Content }

$fails = 0
$warns = 0

function N($needle) {
  if ([string]::IsNullOrEmpty($needle)) { return 0 }
  return ([regex]::Matches($script:html, [regex]::Escape($needle))).Count
}
function Say($ok, $label, $detail) {
  if ($ok) { $tag = 'PASS' } else { $tag = 'FAIL'; $script:fails++ }
  if ($detail) { Write-Host ('[' + $tag + '] ' + $label + '  ->  ' + $detail) }
  else         { Write-Host ('[' + $tag + '] ' + $label) }
}
function Info($label, $detail) {
  $script:warns++
  Write-Host ('[INFO] ' + $label + '  ->  ' + $detail)
}

Write-Host ('HTTP ' + [int]$r.StatusCode + '   גודל HTML: ' + $html.Length + ' תווים')
Write-Host ''
Write-Host '--- 1+9. כותרות תאריך וקאש ---'
foreach ($k in @('Date','Last-Modified','Age','ETag','CF-Cache-Status','X-Cache','X-SpeedyCache','X-SpeedyCache-Status','X-Powered-By')) {
  try { if ($r.Headers.ContainsKey($k)) { Write-Host ('  ' + $k + ': ' + ($r.Headers[$k] -join ', ')) } } catch {}
}
$stamp = [regex]::Match($html, '(?i)speedycache[^<>\n]{0,120}')
if ($stamp.Success) { Write-Host ('  חותמת בגוף העמוד: ' + $stamp.Value.Trim()) }
Write-Host '  (השווי את Date/Last-Modified מול 09.09 10:17 UTC ומול הניקוי הקודם)'
Write-Host ''

Write-Host '--- 2. כפתור השאלון לא קיים ---'
$quizA = N 'zogiyut-quiz-status'
$quizB = N 'בדקו איפה הזוגיות שלכם נמצאת'
Say (($quizA + $quizB) -eq 0) 'אין כפתור שאלון' ('zogiyut-quiz-status=' + $quizA + '  טקסט=' + $quizB)
Write-Host ''

Write-Host '--- 3. Hero: כפתור יחיד ---'
$cta = N 'קבעו שיחת היכרות בקליניקה או בזום'
Say ($cta -eq 1) 'מופע אחד של ה-CTA' ('נמצאו ' + $cta)
Write-Host ''

Write-Host '--- 4. בלוק Service Bridge ---'
$h2 = N 'העבודה שלי היום'
Say ($h2 -ge 1) 'H2 "העבודה שלי היום" קיים' ('מופעים: ' + $h2)
$svc = @('פסיכותרפיה למבוגרים','הדרכת הורים','ייעוץ זוגי')
foreach ($s in $svc) { Say ((N $s) -ge 1) ('פריט: ' + $s) ('מופעים: ' + (N $s)) }
Write-Host ''

Write-Host '--- 5. קישורים בבלוק ---'
$psy = (N '/%D7%A4%D7%A1%D7%99%D7%9B%D7%95%D7%AA%D7%A8%D7%A4%D7%99%D7%94/') + (N '/פסיכותרפיה/')
$par = (N '/%D7%94%D7%93%D7%A8%D7%9B%D7%AA-%D7%94%D7%95%D7%A8%D7%99%D7%9D/') + (N '/הדרכת-הורים/')
Say ($psy -ge 1) 'קישור ל-/פסיכותרפיה/' ('מופעים: ' + $psy)
Say ($par -ge 1) 'קישור ל-/הדרכת-הורים/' ('מופעים: ' + $par)
Write-Host ''

Write-Host '--- 6. אין קישור לייעוץ זוגי ---'
$couple = (N '/%D7%99%D7%99%D7%A2%D7%95%D7%A5-%D7%96%D7%95%D7%92%D7%99/') + (N '/ייעוץ-זוגי/')
Say ($couple -eq 0) '"ייעוץ זוגי" ללא קישור' ('מופעי href: ' + $couple)
Write-Host ''

Write-Host '--- 7. שאר העמוד ---'
$h1 = ([regex]::Matches($html, '(?i)<h1[ >]')).Count
Say ($h1 -eq 1) 'H1 יחיד' ('נמצאו ' + $h1)
$trust = N 'trust-item'
Say ($trust -eq 10) 'Marquee: 10 trust-item' ('נמצאו ' + $trust)
foreach ($s in @('קצת אישי','איפה נפגשים')) { Say ((N $s) -ge 1) ('סקשן: ' + $s) ('מופעים: ' + (N $s)) }
$schema = N 'application/ld+json'
Say ($schema -ge 1) 'Schema קיים' ('בלוקים: ' + $schema)
$li = ([regex]::Matches($html, '(?i)<li[ >]')).Count
Info 'סה"כ <li> בעמוד' $li
Write-Host ''

Write-Host '--- 8. ספירת אלמנטים ---'
$ids = ([regex]::Matches($html, 'data-id="')).Count
if ($ids -eq 66) { Say $true 'data-id = 66' ('נמצאו ' + $ids) }
else { Info 'data-id בעמוד (צפוי 66)' ("$ids  — הספירה הציבורית לא תמיד זהה ל-_elementor_data, השווי ידנית") }
Write-Host ''

Write-Host '======================================'
if ($fails -eq 0) { Write-Host ('הכל תואם. כשלים: 0.  שורות INFO לבדיקה ידנית: ' + $warns) }
else              { Write-Host ('כשלים: ' + $fails + '.  ראי את שורות ה-FAIL למעלה.') }
Write-Host 'CHANGES MADE: NONE (בדיקה בלבד)'
Write-Host '======================================'
