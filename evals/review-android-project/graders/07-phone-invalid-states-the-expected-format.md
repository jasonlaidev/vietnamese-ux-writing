---
type: regex
pattern: '"phone_invalid">Số điện thoại không hợp lệ<'
match: not_contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

phone_invalid states the expected format instead of only 'không hợp lệ'
