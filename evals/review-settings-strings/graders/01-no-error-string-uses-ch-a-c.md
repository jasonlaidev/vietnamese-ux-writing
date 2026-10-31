---
type: regex
pattern: 'Chưa [^,.'']*được'
match: not_contains
target:
  source: file
  path: settings-strings.ts
---

No error string uses 'Chưa … được'
