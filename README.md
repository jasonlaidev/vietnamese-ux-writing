# Vietnamese UX Writing

An agent skill for professional Vietnamese UX writing in web and mobile apps. It teaches AI coding agents (Claude Code and other tools that read `SKILL.md`) to write and review Vietnamese interface text the way a careful product team would: no colloquialisms, no AI-sounding filler, complete error messages, and one consistent set of terms and spelling across the product.

Agent skill giúp AI viết và rà soát chữ tiếng Việt trong giao diện web và app với giọng chuyên nghiệp: không khẩu ngữ, không sáo rỗng kiểu AI, thông báo lỗi đủ ý, xưng hô và chính tả thống nhất.

## Before and after

| Before | After |
|---|---|
| Chưa xóa được. Kiểm tra mạng rồi thử lại. | Không thể xóa. Vui lòng kiểm tra kết nối mạng và thử lại. |
| Trả một lần, dùng mãi | Thanh toán một lần, dùng không thời hạn |
| Các món đã đổi tay sẽ bị thay. | Các món đã đổi thủ công sẽ được thay thế. |
| Nên tin số nào? | Nên dựa vào kết quả nào? |
| Chính Sách Quyền Riêng Tư | Chính sách quyền riêng tư |
| xoá · huỷ · khoẻ (mixed with xóa · hủy · khỏe) | xóa · hủy · khỏe |

## What it covers

- **Interface text:** buttons, labels, forms, placeholders, error and success messages, empty states, confirm dialogs, push notifications, paywalls.
- **Product websites:** hero, features, pricing, FAQ, SEO metadata.
- **Codebase review:** list every Vietnamese string in a Next.js or Expo/React Native project, report findings as `location | current | proposed | reason`, fix them, then run typecheck, lint and tests.

Out of scope: blogs, emails, social media posts, translation and legal documents.

## Installation

### Claude Code plugin marketplace

```
/plugin marketplace add jasonlaidev/vietnamese-ux-writing
/plugin install vietnamese-ux-writing@vietnamese-ux-writing
```

### skills CLI

```bash
npx skills add jasonlaidev/vietnamese-ux-writing
```

### Manual

```bash
git clone https://github.com/jasonlaidev/vietnamese-ux-writing.git
cp -r vietnamese-ux-writing/skills/vietnamese-ux-writing ~/.claude/skills/
```

For a single project, copy the folder into that project's `.claude/skills/` instead.

## Usage

The skill activates automatically when an agent writes or edits Vietnamese UI text. You can also ask directly:

```
Rà soát toàn bộ copy tiếng Việt trong src/, báo cáo theo bảng trước khi sửa.
```

```
Viết thông báo lỗi khi tải giá gói Premium thất bại.
```

```
Review the Vietnamese strings on the pricing page and make them sound professional.
```

## Structure

```
skills/vietnamese-ux-writing/
├── SKILL.md                              Principles, workflow, output format
├── references/
│   ├── word-replacements.md              Colloquial and English words to replace
│   ├── microcopy-patterns.md             Patterns per UI element
│   └── terminology-and-spelling.md       Forms of address, tone marks, capitalization, numbers and dates
└── scripts/
    ├── find-vietnamese-strings.sh        List Vietnamese strings in JS/TS sources
    └── check-tone-marks.sh               Find old-style tone marks (xoá, huỷ, khoẻ); CI-friendly exit code
```

The scripts use POSIX/ERE grep only and run on macOS (BSD grep) and Linux (GNU grep).

## Contributing

Issues and pull requests are welcome. For a new rule, include the current wording, the proposed wording and the reason, and add it to the matching file in `references/`. Keep examples generic: no customer names, prices or private content.

## License

[MIT](LICENSE)
