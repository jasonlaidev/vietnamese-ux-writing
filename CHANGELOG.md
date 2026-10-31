# Changelog

## 1.0.0 - 2026-10-31

- Initial public release.
- `SKILL.md` with core principles, quick reference, workflow for writing and reviewing, output format and exceptions.
- References: word replacements, microcopy patterns per UI element, terminology and spelling.
- Scripts: `find-vietnamese-strings.sh` and `check-tone-marks.sh`, portable across BSD and GNU grep. They scan web, iOS, Android, Flutter, .NET, PHP, Python, Ruby, Go, Rust and Elixir sources plus translation files; `EXTRA_EXT` adds other extensions.
- Rules for error messages that always state the next step and FAQ answers that answer the question directly.
- Examples drawn from e-commerce, payments, booking, education, health and SaaS apps.
- Plugin manifest (`.claude-plugin/plugin.json`) and marketplace entry.
- `evals/` with quality cases (including a 30-file repo and an Android project) and 20 triggering cases for `claude plugin eval`.
