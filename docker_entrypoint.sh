#!/bin/bash

set -e

TRASPARENT_PROXY_PORT=${TRANSPARENT_PROXY_PORT:-:3128}
PROXY_HOSTS=${PROXY_HOSTS:-}

go-wrapper run -f=/dev/stdout -l=$TRANSPARENT_PROXY_PORT -p=$PROXY_HOSTS

exec "$@"

