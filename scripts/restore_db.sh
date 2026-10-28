#!/bin/bash

BACKUP_FILE=$1

echo "[$(date)] Starting restore"

dropdb inventory_db

createdb inventory_db

gunzip -c "$BACKUP_FILE" | psql inventory_db

echo "[$(date)] Restore completed"
