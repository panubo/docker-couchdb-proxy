#!/usr/bin/env bash

set -e

[ "$DEBUG" == 'true' ] && set -x

sed -i -e "s@{{COUCHDB_SERVICE}}@${COUCHDB_SERVICE:-couchdb}@g" /etc/nginx/conf.d/nginx.conf

exec "$@"
