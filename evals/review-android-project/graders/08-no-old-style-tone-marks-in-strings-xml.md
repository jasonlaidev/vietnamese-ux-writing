---
type: regex
pattern: '(oá|oà|oả|oã|oạ|oé|oè|oẻ|oẽ|oẹ|uý|uỳ|uỷ|uỹ|uỵ)([^a-zA-ZÀ-ỹ]|$)'
match: not_contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

No old-style tone marks in strings.xml
