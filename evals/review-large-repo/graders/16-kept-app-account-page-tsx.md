---
type: regex
pattern: 'Chính sách quyền riêng tư'
match: contains
target:
  source: file
  path: app/account/page.tsx
---

app/account/page.tsx still contains the good or protected text: Chính sách quyền riêng tư
