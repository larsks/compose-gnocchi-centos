#!/bin/sh

cat > /etc/gnocchi/gnocchi.conf <<EOF
[indexer]
url = postgresql://${POSTGRESQL_USER}:${POSTGRESQL_PASSWORD}@indexer/postgres

[storage]
coordination_url = redis://:${REDIS_PASSWORD}@storage

[incoming]
driver = redis
redis_url = redis://:${REDIS_PASSWORD}@storage
EOF

gnocchi-upgrade || true
chown -R gnocchi:gnocchi /var/lib/gnocchi /etc/gnocchi

exec "$@"
