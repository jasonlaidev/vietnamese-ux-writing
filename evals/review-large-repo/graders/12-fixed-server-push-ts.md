---
type: regex
pattern: 'nha!!!|😘|nhé'
match: not_contains
target:
  source: file
  path: server/push.ts
---

server/push.ts no longer contains: nha!!!, 😘, nhé
