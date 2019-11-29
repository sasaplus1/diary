#!/bin/bash

set -euo pipefail

__main() {
  local dir=

  dir="${1}/$(date +%F | sed -e 's|-|/|g')"

  local id=

  if [ -d "$dir" ]
  then
    id="$(($(find "$dir" -maxdepth 1 -type d -print | sed -e '1d' | wc -l) + 1))"
  else
    id=1
  fi

  printf -- '%s/%02d/%02d.md\n' "$dir" "$id" "$id"
}

__main "$@"

unset -f __main
