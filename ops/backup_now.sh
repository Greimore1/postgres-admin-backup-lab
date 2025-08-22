#!/usr/bin/env bash
set -euo pipefail
TS=$(date +"%Y%m%d-%H%M%S")
mkdir -p backups
FILE="backups/pg-backup-$TS.sql.gz"
echo "[*] Taking logical backup to $FILE"
docker exec -i pg-adminlab pg_dump -U postgres -d postgres | gzip -9 > "$FILE"
echo "[*] Pruning to keep the 5 most recent backups"
ls -1tr backups/pg-backup-*.sql.gz | head -n -5 | xargs -r rm -f
echo "[✓] Done"
