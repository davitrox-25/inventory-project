#!/bin/bash

BACKUP_DIR="/home/davitrox/inventory-project/backups"

echo "==============================="
echo " DATABASE HEALTH CHECK"
echo "==============================="

echo ""
echo "PostgreSQL Service Status:"
systemctl is-active postgresql

echo ""
echo "Database Connection Test:"
sudo -u postgres psql -d inventory_db -c "SELECT 'Connection OK' AS status;"

echo ""
echo "Number of Backups:"
find "$BACKUP_DIR" -name "*.sql.gz" | wc -l

echo ""
echo "Latest Backup:"
ls -t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | head -1

echo ""
echo "Backup Directory Size:"
du -sh "$BACKUP_DIR"

echo ""
echo "Disk Usage:"
df -h /

