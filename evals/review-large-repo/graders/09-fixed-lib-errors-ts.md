---
type: regex
pattern: 'rồi thử lại|mất rồi|Thanh toán fail'''
match: not_contains
target:
  source: file
  path: lib/errors.ts
---

lib/errors.ts no longer contains: rồi thử lại, mất rồi, Thanh toán fail'
