#!/usr/bin/env sh

cd /usr/lib/atproto-pdsadmin

cmd="$1"
shift

if [ "${cmd#*/}" != "$cmd" ] || [ ! -f "$cmd.sh" ]; then
    ./help.sh
    exit 1
fi

exec "./$cmd.sh" "$@"
