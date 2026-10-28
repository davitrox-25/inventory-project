#!/bin/bash

# Configuration variables
BACKUP_DIR="/home/davitrox/inventory-project/backups"
DATE=$(date +%Y%m%d_%H%M%S)

echo "[$(date)] Starting backup"

# Run backup and compress it on the fly
pg_dump inventory_db | gzip > "$BACKUP_DIR/inventory_db_$DATE.sql.gz"

echo "[$(date)] Backup completed"

# Retention policy: Automatically delete backup archives older than 7 days
find "$BACKUP_DIR" -name "*.sql.gz" -mtime +7 -delete
