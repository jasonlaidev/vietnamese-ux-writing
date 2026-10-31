---
type: regex
pattern: 'fail|nhé|!|xong rồi'
flags: i
match: not_contains
target:
  source: file
  path: app/src/main/java/com/example/booking/PaymentActivity.kt
---

Hard-coded Toast strings in PaymentActivity.kt are fixed (no 'fail', 'nhé', '!', 'xong rồi')
