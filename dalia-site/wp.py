# -*- coding: utf-8 -*-
"""כלי גישה ל-daliagrinbaum.co.il דרך ה-REST API.

שימוש:
    python wp.py check                 בדיקת חיבור + ספירת עמודים, מוצרים וקורסים
    python wp.py get wp/v2/pages?per_page=5
    python wp.py count wc/v3/products
"""
import base64
import json
import os
import sys
import urllib.error
import urllib.request

sys.stdout.reconfigure(encoding="utf-8")

HERE = os.path.dirname(os.path.abspath(__file__))


def load_env():
    env = {}
    path = os.path.join(HERE, ".env")
    if not os.path.exists(path):
        sys.exit("חסר קובץ .env בתיקייה " + HERE)
    with open(path, encoding="utf-8-sig") as fh:
        for line in fh:
            line = line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            env[key.strip()] = value.strip().strip('"').strip("'")
    for key in ("WP_URL", "WP_USERNAME", "WP_APP_PASSWORD"):
        if not env.get(key):
            sys.exit("חסר " + key + " ב-.env")
    if "להדביק" in env["WP_APP_PASSWORD"]:
        sys.exit("סיסמת האפליקציה עדיין placeholder. הדביקי אותה ב-.env והריצי שוב.")
    return env


ENV = load_env()
BASE = ENV["WP_URL"].rstrip("/") + "/wp-json/"
AUTH = base64.b64encode(
    (ENV["WP_USERNAME"] + ":" + ENV["WP_APP_PASSWORD"].replace(" ", "")).encode()
).decode()


def request(path, method="GET", payload=None):
    """מחזיר (status, headers, body). body הוא dict/list אם JSON."""
    url = path if path.startswith("http") else BASE + path.lstrip("/")
    data = json.dumps(payload, ensure_ascii=False).encode("utf-8") if payload else None
    req = urllib.request.Request(url, data=data, method=method)
    req.add_header("User-Agent", "Mozilla/5.0")  # בלי זה Cloudflare חוסם (1010)
    req.add_header("Authorization", "Basic " + AUTH)
    req.add_header("Accept", "application/json")
    if data:
        req.add_header("Content-Type", "application/json; charset=utf-8")
    try:
        with urllib.request.urlopen(req, timeout=60) as res:
            raw = res.read().decode("utf-8", "replace")
            status, headers = res.status, dict(res.headers)
    except urllib.error.HTTPError as err:
        raw = err.read().decode("utf-8", "replace")
        status, headers = err.code, dict(err.headers)
    except (urllib.error.URLError, OSError) as err:
        sys.exit("לא הצלחתי להתחבר ל-%s — %s" % (url, err))
    try:
        body = json.loads(raw)
    except ValueError:
        body = raw
    return status, headers, body


def count(route):
    """מספר הפריטים בראוט לפי הכותרת X-WP-Total."""
    status, headers, body = request(route + ("&" if "?" in route else "?") + "per_page=1")
    if status != 200:
        msg = body.get("message", body) if isinstance(body, dict) else body
        return None, "HTTP %s — %s" % (status, str(msg)[:120])
    total = headers.get("X-WP-Total") or headers.get("x-wp-total")
    return (int(total) if total is not None else len(body if isinstance(body, list) else [])), None


def check():
    status, _, body = request("wp/v2/users/me")
    if status != 200:
        msg = body.get("message", body) if isinstance(body, dict) else body
        sys.exit("החיבור נכשל. HTTP %s — %s" % (status, str(msg)[:200]))
    print("חיבור תקין: %s (%s)" % (body.get("name"), ", ".join(body.get("roles", []))))
    print("")
    rows = [
        ("עמודים", "wp/v2/pages?status=any"),
        ("פוסטים", "wp/v2/posts?status=any"),
        ("מוצרים (WooCommerce)", "wc/v3/products?status=any"),
        ("קורסים (LearnDash)", "ldlms/v2/sfwd-courses"),
        ("שיעורים (LearnDash)", "ldlms/v2/sfwd-lessons"),
    ]
    for label, route in rows:
        value, err = count(route)
        print("%-24s %s" % (label + ":", value if err is None else err))


def main():
    args = sys.argv[1:]
    cmd = args[0] if args else "check"
    if cmd == "check":
        check()
    elif cmd == "count" and len(args) > 1:
        value, err = count(args[1])
        print(value if err is None else err)
    elif cmd == "get" and len(args) > 1:
        status, _, body = request(args[1])
        print("HTTP", status)
        print(json.dumps(body, ensure_ascii=False, indent=2)[:8000])
    else:
        print(__doc__)


if __name__ == "__main__":
    main()
