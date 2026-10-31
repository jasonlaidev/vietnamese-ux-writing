---
type: regex
pattern: 'Chưa xoá được nha'
match: contains
target:
  source: file
  path: node_modules/fake-lib/index.js
---

node_modules/fake-lib/index.js still contains the good or protected text: Chưa xoá được nha
