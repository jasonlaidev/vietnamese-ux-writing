# Changelog

## Unreleased

- New pattern "Ghi chú nguồn, giới hạn và ghi chú nội bộ": no product self-reference ("app dịch", "app chưa xét"), no AI tool names, no internal notes (decision dates, pending approvals, docs paths, internal codes) in the UI; source lines short; limitations that affect user decisions are rewritten neutrally, not dropped. Hidden sentences are logged verbatim in a review file in the repo.
- Mixed tone-mark projects: count both styles, propose the new style, convert with the documented rule including capitals; leave externally captured fixtures and generated source translations unchanged.
- Review workflow: normalize external fixtures at test time instead of editing them.

## 1.1.0 - 2026-11-01

- New principle: edit only with a stated reason (colloquialism, wrong meaning, convention, missing information, literal-translation traces such as redundant passive voice or "của"). Do not swap synonyms, add words that carry no information, or rename established product terms; report those for the product owner instead.
- Formal does not mean wordy: new "Văn hành chính" table ("tiến hành", "quá trình", "Vui lòng" before neutral instructions).
- Aligned with the Microsoft Vietnamese Style Guide where the skill was stricter than needed: result-style errors ("Không tìm thấy …", "Không đủ …") are accepted, status lines do not need "Vui lòng", "Chọn" is the default action verb, "cha mẹ"/"bố mẹ" is the default for parents, no comma before "và"/"hoặc", and spell out "&", "+", "~" for screen readers.
- Absolute promises are still rewritten immediately and flagged for confirmation.

## 1.0.0 - 2026-10-31

- Initial public release.
- `SKILL.md` with core principles, quick reference, workflow for writing and reviewing, output format and exceptions.
- References: word replacements, microcopy patterns per UI element, terminology and spelling.
- Scripts: `find-vietnamese-strings.sh` and `check-tone-marks.sh`, portable across BSD and GNU grep. They scan web, iOS, Android, Flutter, .NET, PHP, Python, Ruby, Go, Rust and Elixir sources plus translation files; `EXTRA_EXT` adds other extensions.
- Rules for error messages that always state the next step and FAQ answers that answer the question directly.
- Examples drawn from e-commerce, payments, booking, education, health and SaaS apps.
- Plugin manifest (`.claude-plugin/plugin.json`) and marketplace entry.
- GitHub Actions CI that validates the plugin, lints the scripts with ShellCheck and smoke-tests them.
- `evals/` with quality cases (including a 30-file repo and an Android project) and 20 triggering cases for `claude plugin eval`.
