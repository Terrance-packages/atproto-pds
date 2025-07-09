#!/usr/bin/env sh

cd /usr/lib/atproto-pdsadmin

if [ $# -ge 1 ]; then
    cmd="$1"
    shift
fi

if [ "${cmd#*/}" != "$cmd" ] || [ ! -f "$cmd.sh" ]; then
    ./help.sh
    exit 1
fi

exec "./$cmd.sh" "$@"
