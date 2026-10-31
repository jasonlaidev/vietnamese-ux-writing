---
type: regex
pattern: 'privacy: ''Chính sách quyền riêng tư'''
match: contains
target:
  source: file
  path: settings-strings.ts
---

Privacy label is sentence case 'Chính sách quyền riêng tư'
