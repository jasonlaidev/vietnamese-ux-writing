---
type: regex
pattern: 'vĩnh viễn|không giới hạn|đột phá|tuyệt vời|gấp 10 lần|không bao giờ'
flags: i
match: not_contains
target:
  source: file
  path: pricing.tsx
---

No absolute promises or hype
