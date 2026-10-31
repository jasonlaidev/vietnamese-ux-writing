---
type: regex
pattern: 'Giải Pháp|Miễn Phí|Câu Hỏi|Thường Gặp|Quản Lý|Bán Hàng'
match: not_contains
target:
  source: file
  path: pricing.tsx
---

Headings are sentence case
