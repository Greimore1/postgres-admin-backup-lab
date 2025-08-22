#!/usr/bin/env bash
set -euo pipefail
LATEST=$(ls -1tr backups/pg-backup-*.sql.gz | tail -n 1)
echo "[*] Restoring from $LATEST into pg-restorelab"
docker rm -f pg-restorelab >/dev/null 2>&1 || true
docker run -d --name pg-restorelab -e POSTGRES_PASSWORD=postgres -p 5433:5432 postgres:16-alpine
sleep 3
gunzip -c "$LATEST" | docker exec -i pg-restorelab psql -U postgres
echo "[✓] Restore complete. Connect on port 5433."
