Recovery Procedure

* Create Backup

./scripts/backup_db.sh

* Restore Database

sudo -u postgres dropdb inventory_db

sudo -u postgres createdb inventory_db

sudo -u postgres psql inventory_db < backups/inventory_db_backup.sql
