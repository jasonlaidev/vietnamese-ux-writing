---
type: regex
pattern: '\blead\b|\bsync\b|real-time|click vào đây'
flags: i
match: not_contains
target:
  source: file
  path: pricing.tsx
---

No English jargon (lead, sync, real-time, Click vào đây)
