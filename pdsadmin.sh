#!/usr/bin/env sh

cmd="$1"
shift

[ -f "$0-$cmd" ] || cmd=help
exec "$0-$cmd" "$@"
