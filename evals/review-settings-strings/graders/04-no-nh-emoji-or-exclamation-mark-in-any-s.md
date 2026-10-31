---
type: regex
pattern: 'nhé|!|🎉'
match: not_contains
target:
  source: file
  path: settings-strings.ts
---

No 'nhé', emoji or exclamation mark in any string
