#!/usr/bin/env bash
set -euo pipefail
echo "[*] Connections per db:"
docker exec -i pg-adminlab psql -U postgres -c "select datname, count(*) from pg_stat_activity group by 1 order by 2 desc;"
echo "[*] Table sizes (top 5):"
docker exec -i pg-adminlab psql -U postgres -c "select relname, pg_size_pretty(pg_relation_size(relid)) from pg_catalog.pg_statio_user_tables order by pg_relation_size(relid) desc limit 5;"
