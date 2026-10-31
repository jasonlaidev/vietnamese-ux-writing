---
type: regex
pattern: 'không cần lý do|tuyệt đối'
match: not_contains
target:
  source: file
  path: app/pricing/page.tsx
---

app/pricing/page.tsx no longer contains: không cần lý do, tuyệt đối
