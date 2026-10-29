#!/bin/bash

LOG_FILE="/home/davitrox/inventory-project/logs/health.log"
BACKUP_DIR="/home/davitrox/inventory-project/backups"

echo "==============================="
echo " DATABASE HEALTH CHECK"
echo "==============================="

# PostgreSQL Status
POSTGRES_STATUS=$(systemctl is-active postgresql)

# Database Connection Test
DB_STATUS=$(sudo -u postgres psql -d inventory_db -t -c "SELECT 'OK';" 2>/dev/null | xargs)

# Backup Count
BACKUP_COUNT=$(find "$BACKUP_DIR" -name "*.sql.gz" | wc -l)

# Latest Backup
LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | head -1)

# Backup Size
BACKUP_SIZE=$(du -sh "$BACKUP_DIR" | awk '{print $1}')

echo ""
echo "PostgreSQL Status: $POSTGRES_STATUS"
echo "Database Connection: $DB_STATUS"
echo "Backup Count: $BACKUP_COUNT"
echo "Latest Backup: $LATEST_BACKUP"
echo "Backup Storage Size: $BACKUP_SIZE"

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "==============================="
echo " HEALTH CHECK SUMMARY"
echo "==============================="

if [ "$POSTGRES_STATUS" = "active" ] && [ "$DB_STATUS" = "OK" ]; then
    echo "Overall Status: HEALTHY"
else
    echo "Overall Status: ATTENTION REQUIRED"
fi
