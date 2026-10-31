---
type: regex
pattern: '\bnha\b|nhé|\bok\b|\bcheck\b|!|😊'
flags: i
match: not_contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

No 'nha', 'nhé', 'ok', 'check', emoji or exclamation mark in strings.xml
