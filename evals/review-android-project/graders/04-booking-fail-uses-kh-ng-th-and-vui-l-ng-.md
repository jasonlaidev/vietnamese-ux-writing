---
type: regex
pattern: '"booking_fail">Không thể[^<]*Vui lòng'
match: contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

booking_fail uses 'Không thể' and 'Vui lòng'
