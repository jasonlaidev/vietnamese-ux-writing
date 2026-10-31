#!/usr/bin/env bash
# Find words using the old tone-mark placement (xoá, huỷ, khoẻ) where the project uses the new one (xóa, hủy, khỏe).
# Only open syllables oa/oe/uy are affected; words after "q" (quý, quỳ) are correct and filtered out.
# Usage: check-tone-marks.sh [dir ...]   (default: current directory)
# Exit code 1 when matches are found, so it can run in CI.
set -euo pipefail

dirs=("${@:-.}")
pattern='(oá|oà|oả|oã|oạ|oé|oè|oẻ|oẽ|oẹ|uý|uỳ|uỷ|uỹ|uỵ)([^[:alpha:]]|$)'

matches=$(grep -rn -E "$pattern" "${dirs[@]}" \
  --include='*.ts' --include='*.tsx' --include='*.js' --include='*.jsx' --include='*.md' --include='*.json' \
  | grep -v -E '(^|/)node_modules/' \
  | grep -v -E 'qu(ý|ỳ|ỷ|ỹ|ỵ)([^[:alpha:]]|$)' || true)

if [ -n "$matches" ]; then
  echo "$matches"
  exit 1
fi
echo "No old-style tone marks found."
