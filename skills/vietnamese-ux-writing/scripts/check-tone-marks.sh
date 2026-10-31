#!/usr/bin/env bash
# Find words using the old tone-mark placement (xoá, huỷ, khoẻ) where the project uses the new one (xóa, hủy, khỏe).
# Only open syllables oa/oe/uy are affected; words after "q" (quý, quỳ) are correct and filtered out.
# Scans the same file types as find-vietnamese-strings.sh, plus Markdown.
# Usage: check-tone-marks.sh [dir ...]   (default: current directory)
# Exit code 1 when matches are found, so it can run in CI.
set -euo pipefail

dirs=("${@:-.}")
# Extra extensions, space separated: EXTRA_EXT="lua cfm" find-vietnamese-strings.sh
extra=()
for e in ${EXTRA_EXT:-}; do extra+=("--include=*.$e"); done
pattern='(oá|oà|oả|oã|oạ|oé|oè|oẻ|oẽ|oẹ|uý|uỳ|uỷ|uỹ|uỵ)([^[:alpha:]]|$)'

matches=$(grep -rn -E "$pattern" "${dirs[@]}" \
  --include='*.ts' --include='*.tsx' --include='*.js' --include='*.jsx' --include='*.mjs' --include='*.cjs' \
  --include='*.vue' --include='*.svelte' --include='*.astro' --include='*.html' --include='*.md' --include='*.mdx' \
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
  | grep -v -E 'qu(ý|ỳ|ỷ|ỹ|ỵ)([^[:alpha:]]|$)' || true)

if [ -n "$matches" ]; then
  echo "$matches"
  exit 1
fi
echo "No old-style tone marks found."
