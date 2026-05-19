#!/usr/bin/env bash
set -euo pipefail
test -f workspace/evidencias/app-anon.log
test -n "$(find workspace/evidencias -name 'erros-*.txt' -type f -print -quit)"
grep -Rqi "timeout\|error\|failed" workspace/evidencias
echo "OK: evidencias do laboratorio encontradas."
