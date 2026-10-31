---
type: regex
pattern: 'Siêu Nhanh Siêu Tiện|spa giá rẻ, spa gần đây'
match: not_contains
target:
  source: file
  path: app/layout.tsx
---

app/layout.tsx no longer contains: Siêu Nhanh Siêu Tiện, spa giá rẻ, spa gần đây
