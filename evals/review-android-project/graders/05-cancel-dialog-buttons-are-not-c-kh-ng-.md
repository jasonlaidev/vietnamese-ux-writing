---
type: regex
pattern: '"cancel_confirm_yes">Có<|"cancel_confirm_no">Không<'
match: not_contains
target:
  source: file
  path: app/src/main/res/values-vi/strings.xml
---

Cancel dialog buttons are not 'Có' / 'Không'
