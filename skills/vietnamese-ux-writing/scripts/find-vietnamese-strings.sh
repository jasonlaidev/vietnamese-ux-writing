#!/usr/bin/env bash
# List every line containing Vietnamese (non-ASCII) text in JS/TS source files.
# Usage: find-vietnamese-strings.sh [dir ...]
# Without arguments, scans whichever of app, components, lib, src, pages exist.
# Skips node_modules, shadcn-style components/ui, and test files.
set -euo pipefail

if [ "$#" -gt 0 ]; then
  dirs=("$@")
else
  dirs=()
  for d in app components lib src pages; do
    [ -d "$d" ] && dirs+=("$d")
  done
fi

if [ "${#dirs[@]}" -eq 0 ]; then
  echo "No source directory found. Pass directories as arguments." >&2
  exit 1
fi

# A byte range in the C locale matches any UTF-8 multibyte character; works with BSD and GNU grep.
LC_ALL=C grep -rn "$(printf '[\200-\377]')" "${dirs[@]}" \
  --include='*.ts' --include='*.tsx' --include='*.js' --include='*.jsx' \
  | grep -v -E '(^|/)(node_modules|components/ui|__tests__)/|\.(test|spec)\.' \
  || true
