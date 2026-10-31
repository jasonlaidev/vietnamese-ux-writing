# Vietnamese UX Writing

[![CI](https://github.com/jasonlaidev/vietnamese-ux-writing/actions/workflows/ci.yml/badge.svg)](https://github.com/jasonlaidev/vietnamese-ux-writing/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-informational.svg)](CHANGELOG.md)

An agent skill for professional Vietnamese UX writing in web and mobile apps.

It teaches AI coding agents (Claude Code and other tools that read `SKILL.md`) to write and review Vietnamese interface text the way a careful product team would: no colloquialisms, no AI-sounding filler, complete error messages, and one consistent set of terms and spelling across the product.

> Agent skill giúp AI viết và rà soát chữ tiếng Việt trong giao diện web và app với giọng chuyên nghiệp: không khẩu ngữ, không sáo rỗng kiểu AI, thông báo lỗi đủ ý, xưng hô và chính tả thống nhất.

## Contents

- [Before and after](#before-and-after)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Evaluation](#evaluation)
- [Repository structure](#repository-structure)
- [Contributing](#contributing)
- [License](#license)

## Before and after

| Before | After |
|---|---|
| Chưa xóa được. Kiểm tra mạng rồi thử lại. | Không thể xóa. Vui lòng kiểm tra kết nối mạng và thử lại. |
| Trả một lần, dùng mãi | Thanh toán một lần, dùng không thời hạn |
| Đơn chốt rồi thì không sửa được nha. | Đơn hàng đã xác nhận không thể chỉnh sửa. |
| Thanh toán fail, thử lại đi | Không thể thanh toán. Vui lòng kiểm tra số dư hoặc chọn phương thức khác. |
| Chính Sách Quyền Riêng Tư | Chính sách quyền riêng tư |
| xoá · huỷ · khoẻ (mixed with xóa · hủy · khỏe) | xóa · hủy · khỏe |

## Features

- **Interface text:** buttons, labels, forms, placeholders, error and success messages, empty states, confirm dialogs, push notifications and paywalls.
- **Product websites:** hero, features, pricing, FAQ and SEO metadata.
- **Any kind of app:** e-commerce, fintech, booking, education, health, SaaS and internal tools. Examples in the skill are spread across these domains.
- **Codebase review:** list every Vietnamese string in a project, report findings as `location | current | proposed | reason`, fix them, then run the project's own checks.

Out of scope: blogs, emails, social media posts, translation and legal documents.

### Supported stacks

The writing rules apply to any stack. The bundled scripts read these sources:

| Area | Coverage |
|---|---|
| Web and mobile | React, Next.js, React Native, Vue, Svelte, Angular, Flutter, iOS, Android |
| Backend | PHP/Laravel, Python/Django, Ruby, Go, .NET, Rust, Elixir |
| Translation files | `strings.xml`, `.strings`, `.arb`, `.json`, `.yaml`, `.po`, `.xliff`, `.resx` |

For other languages, pass extra extensions with `EXTRA_EXT="lua cfm"`.

The scripts use POSIX/ERE grep only and run on macOS (BSD grep) and Linux (GNU grep).

## Installation

### Claude Code plugin marketplace

```
/plugin marketplace add jasonlaidev/vietnamese-ux-writing
/plugin install vietnamese-ux-writing@vietnamese-ux-writing
```

Update later with `/plugin marketplace update vietnamese-ux-writing`.

### skills CLI

Works with Claude Code, Cursor, Codex, Gemini CLI and other agents.

```bash
npx skills add jasonlaidev/vietnamese-ux-writing
```

The CLI asks which agents to install for and whether to install globally or for the current project.

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

## Evaluation

The `evals/` folder holds two kinds of cases, run with `claude plugin eval`:

- **Quality** (`review-*`, `write-*`): review or write copy, with and without the skill, 3 runs each. Graders check concrete outcomes such as no colloquialisms, error messages that state the next step, valid XML with placeholders kept, and good strings left untouched.
- **Triggering** (`trigger-pos-*`, `trigger-neg-*`): 10 prompts that should load the skill and 10 that should not (blog posts, emails, translation, contracts, code questions, English UI).

```bash
claude plugin eval . --case 'trigger-*' --ablation none
claude plugin eval . --case 'review-*' --scaffold --allow-tools Write Edit
claude plugin eval . --case 'write-*' --allow-tools Write Edit
```

### Latest results

Measured on 2026-10-31 at commit `26121b8` with Claude Code 2.1.316, Claude Opus 5.5 and 3 runs per arm. Each score is the share of graders passed, averaged over the 3 runs.

| Quality case | With skill | Without skill |
|---|---:|---:|
| `write-expense-app-copy` | 100% | 59% |
| `review-pricing-page` | 100% | 67% |
| `review-android-project` | 100% | 83% |
| `review-large-repo` (30 files) | 99% | 95% |
| `review-settings-strings` | 100% | 91% |
| **Mean** | **99.8%** | **79%** |

Triggering: 60 of 60 runs were correct. The skill loaded in all 30 runs that should load it and in none of the 30 that should not.

### Limitations

- Review cases ran with `--allow-tools Write Edit` and no Bash, so the bundled scripts were not measured.
- Graders check concrete rules. No native Vietnamese reader rated how natural the copy sounds.
- The cases were written alongside the skill, so they favor the rules it teaches. Treat the gap as evidence that the rules are applied, not as a general quality score.
- These scores describe the commit above. Rerun the evals after changing the skill.

## Repository structure

```
.
├── .claude-plugin/
│   ├── plugin.json                           Plugin manifest
│   └── marketplace.json                      Lets `/plugin marketplace add` install from this repo
├── evals/                                    Test cases for `claude plugin eval`
└── skills/vietnamese-ux-writing/
    ├── SKILL.md                              Principles, workflow, output format
    ├── references/
    │   ├── word-replacements.md              Colloquial and English words to replace
    │   ├── microcopy-patterns.md             Patterns per UI element
    │   └── terminology-and-spelling.md       Forms of address, product terms, tone marks, capitalization, numbers, money and dates
    └── scripts/
        ├── find-vietnamese-strings.sh        List Vietnamese strings in source, template and translation files
        └── check-tone-marks.sh               Find old-style tone marks (xoá, huỷ, khoẻ); CI-friendly exit code
```

## Contributing

Issues and pull requests are welcome. For a new rule:

1. Include the current wording, the proposed wording and the reason.
2. Add it to the matching file in `references/`.
3. Keep examples generic: no customer names, prices or private content.

See [CHANGELOG.md](CHANGELOG.md) for release history.

## License

[MIT](LICENSE)
