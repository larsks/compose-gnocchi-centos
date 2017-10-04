#!/bin/sh

echo waiting for gnocchi
while ! curl -sf http://gnocchi-api:8041 -o /dev/null; do
	echo ...still waiting
	sleep 1
done
echo gnocchi is available

exec "$@"
