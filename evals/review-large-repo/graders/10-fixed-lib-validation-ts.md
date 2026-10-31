---
type: regex
pattern: '''Số điện thoại không hợp lệ'''
match: not_contains
target:
  source: file
  path: lib/validation.ts
---

lib/validation.ts no longer contains: 'Số điện thoại không hợp lệ'
