#!/bin/bash

BACKUP_DIR="/home/davitrox/inventory-project/backups"
DATE=$(date +%Y%m%d_%H%M%S)

echo "[$(date)] Starting backup"

pg_dump inventory_db > "$BACKUP_DIR/inventory_db_$DATE.sql"

echo "[$(date)] Backup completed"
