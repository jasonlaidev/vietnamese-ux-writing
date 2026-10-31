---
type: regex
pattern: 'Trống trơn à|book ngay cho xịn nha'
match: not_contains
target:
  source: file
  path: app/appointments/page.tsx
---

app/appointments/page.tsx no longer contains: Trống trơn à, book ngay cho xịn nha
