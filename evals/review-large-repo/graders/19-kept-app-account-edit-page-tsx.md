---
type: regex
pattern: 'Ví dụ: ten@email\.com'
match: contains
target:
  source: file
  path: app/account/edit/page.tsx
---

app/account/edit/page.tsx still contains the good or protected text: Ví dụ: ten@email.com
