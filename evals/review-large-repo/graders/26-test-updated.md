---
type: regex
pattern: 'Kiểm tra mạng rồi thử lại'
match: not_contains
target:
  source: file
  path: __tests__/errors.test.ts
---

__tests__/errors.test.ts no longer expects the old network error text
