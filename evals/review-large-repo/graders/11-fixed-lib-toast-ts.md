---
type: regex
pattern: 'Lưu thành công rồi|🎉'
match: not_contains
target:
  source: file
  path: lib/toast.ts
---

lib/toast.ts no longer contains: Lưu thành công rồi, 🎉
