---
type: regex
pattern: 'Đã hủy lịch hẹn'
match: contains
target:
  source: file
  path: lib/toast.ts
---

lib/toast.ts still contains the good or protected text: Đã hủy lịch hẹn
