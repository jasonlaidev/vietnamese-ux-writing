---
type: regex
pattern: 'deleteFail: ''[^'']*Vui lòng[^'']*'',\s*inviteFail: ''[^'']*Vui lòng'
match: contains
target:
  source: file
  path: settings-strings.ts
---

Delete and invite errors each give a next step ('Vui lòng')
