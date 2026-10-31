---
type: regex
pattern: 'netError: ''[^'']*Vui lòng'
match: contains
target:
  source: file
  path: settings-strings.ts
---

Network error asks with 'Vui lòng'
