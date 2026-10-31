---
type: regex
pattern: 'Nhập sđt vào đây'
match: not_contains
target:
  source: file
  path: app/login/page.tsx
---

app/login/page.tsx no longer contains: Nhập sđt vào đây
