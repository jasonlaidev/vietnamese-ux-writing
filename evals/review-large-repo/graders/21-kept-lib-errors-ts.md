---
type: regex
pattern: 'Đã có lỗi xảy ra\. Vui lòng thử lại sau\.'
match: contains
target:
  source: file
  path: lib/errors.ts
---

lib/errors.ts still contains the good or protected text: Đã có lỗi xảy ra. Vui lòng thử lại sau.
