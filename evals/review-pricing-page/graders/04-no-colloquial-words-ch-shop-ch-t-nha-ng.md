---
type: regex
pattern: 'chủ shop|chốt|nha[ .,!<]|đừng lo|lúc nào cũng được|hay hỏi| lộ[ ?.,]'
flags: i
match: not_contains
target:
  source: file
  path: pricing.tsx
---

No colloquial words (chủ shop, chốt, nha, đừng lo, lúc nào cũng được, hay hỏi, lộ)
