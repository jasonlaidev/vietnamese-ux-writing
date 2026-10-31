---
type: regex
pattern: 'confirmDeleteOk: ''OK'''
match: not_contains
target:
  source: file
  path: settings-strings.ts
---

Delete confirm button is not 'OK'
