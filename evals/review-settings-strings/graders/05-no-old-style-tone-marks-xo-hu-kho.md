---
type: regex
pattern: '(oá|oà|oả|oã|oạ|oé|oè|oẻ|oẽ|oẹ|uý|uỳ|uỷ|uỹ|uỵ)([^a-zA-ZÀ-ỹ]|$)'
match: not_contains
target:
  source: file
  path: settings-strings.ts
---

No old-style tone marks (xoá, huỷ, khoẻ)
