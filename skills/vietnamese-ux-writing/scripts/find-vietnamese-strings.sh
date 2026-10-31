#!/usr/bin/env bash
# List every line containing Vietnamese (non-ASCII) text in source, template and translation files.
# Covers JS/TS (React, Next.js, React Native), Vue, Svelte, Astro, Angular/HTML, Flutter (.dart, .arb),
# iOS (.swift, .strings, .stringsdict), Android (.kt, .java, strings.xml), PHP/Blade, Python/Django,
# Ruby/ERB, Go, .NET (.cs, .resx, .xaml, .razor), Rust, Elixir, JSP, and i18n files
# (.json, .yaml, .po, .properties, .xlf/.xliff, .toml, .ftl). Add other extensions with EXTRA_EXT.
# Usage: find-vietnamese-strings.sh [dir ...]   (default: current directory)
# Skips dependencies, build output, lock files, tests and shadcn-style components/ui.
set -euo pipefail

dirs=("${@:-.}")
# Extra extensions, space separated: EXTRA_EXT="lua cfm" find-vietnamese-strings.sh
extra=()
for e in ${EXTRA_EXT:-}; do extra+=("--include=*.$e"); done

# A byte range in the C locale matches any UTF-8 multibyte character; works with BSD and GNU grep.
LC_ALL=C grep -rn "$(printf '[\200-\377]')" "${dirs[@]}" \
  --include='*.ts' --include='*.tsx' --include='*.js' --include='*.jsx' --include='*.mjs' --include='*.cjs' \
  --include='*.vue' --include='*.svelte' --include='*.astro' --include='*.html' --include='*.mdx' \
  --include='*.dart' --include='*.arb' \
  --include='*.swift' --include='*.strings' --include='*.stringsdict' \
  --include='*.kt' --include='*.java' --include='*.xml' \
  --include='*.php' --include='*.py' --include='*.rb' --include='*.erb' --include='*.go' \
  --include='*.twig' --include='*.hbs' --include='*.ejs' --include='*.liquid' --include='*.cshtml' \
  --include='*.cs' --include='*.resx' --include='*.xaml' --include='*.razor' --include='*.rs' \
  --include='*.ex' --include='*.exs' --include='*.heex' --include='*.jsp' --include='*.xlf' --include='*.xliff' \
  --include='*.json' --include='*.yaml' --include='*.yml' --include='*.po' --include='*.properties' \
  --include='*.toml' --include='*.ftl' ${extra[@]+"${extra[@]}"} \
  --exclude='*lock*' --exclude='*.min.*' \
  --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=dist --exclude-dir=build --exclude-dir=out \
  --exclude-dir=.next --exclude-dir=.nuxt --exclude-dir=.svelte-kit --exclude-dir=.expo --exclude-dir=.turbo \
  --exclude-dir=Pods --exclude-dir=.dart_tool --exclude-dir=.gradle --exclude-dir=vendor \
  --exclude-dir=venv --exclude-dir=.venv --exclude-dir=__pycache__ --exclude-dir=coverage \
  | grep -v -E '(^|/)(components/ui|__tests__|test|tests|spec)/|[._](test|spec)\.' \
  || true
