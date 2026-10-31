---
type: regex
pattern: 'Bạn có chắc không\?|>OK<|>Thôi<|huỷ'
match: not_contains
target:
  source: file
  path: components/CancelDialog.tsx
---

components/CancelDialog.tsx no longer contains: Bạn có chắc không?, >OK<, >Thôi<, huỷ
