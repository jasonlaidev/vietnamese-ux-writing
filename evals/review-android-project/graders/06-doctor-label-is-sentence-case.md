---
type: regex
pattern: 'Bác Sĩ|Phụ Trách'
match: not_contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

doctor_label is sentence case
