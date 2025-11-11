#!/bin/sh
set -e

echo "Starting Apache APISIX..."

# APISIX'i başlat
exec /usr/local/apisix/apisix docker-start
