System Architecture

Overview

The Automated Inventory Database Server runs on Ubuntu Server and uses PostgreSQL as the database engine.

The system performs:

* Inventory management
* Automated database backups
* Backup compression
* Backup retention
* Disaster recovery
* Health monitoring
* Scheduled maintenance with cron
------------------------------------------------------------------------------------------------------------

Architecture Diagram


                    +------------------+
                    |      User        |
                    +--------+---------+
                             |
                             v

                 +----------------------+
                 |    Ubuntu Server     |
                 +----------+-----------+
                            |
                            v

                 +----------------------+
                 |      PostgreSQL      |
                 |     inventory_db     |
                 +----------+-----------+
                            |
        +-------------------+-------------------+
        |                   |                   |
        v                   v                   v

+---------------+  +----------------+  +------------------+
| backup_db.sh  |  | restore_db.sh  |  | check_db_health  |
+-------+-------+  +--------+-------+  +---------+--------+
        |                   |                  |
        |                   |                  |
        v                   |                  v

+-------------------+       |       +-------------------+
| Compressed Backup |       |       | Health Monitoring |
|   (.sql.gz)       |       |       |   and Logging     |
+---------+---------+       |       +---------+---------+
          |                 |                 |
          |                 |                 |
          v                 v                 v

      +-------------------------------------------+
      |                 Cron Jobs                 |
      +-------------------------------------------+

------------------------------------------------------------------------------------------------------------

Components

PostgreSQL

Stores all inventory data:

* Categories
* Suppliers
* Products
* Warehouses
* Inventory
* Inventory Movements

Backup Script

Creates compressed database backups using:

pg_dump

Restore Script

Restores a database from a compressed backup archive.

Health Check Script

Monitors:

* PostgreSQL availability
* Database connectivity
* Backup availability
* Disk utilization

Cron

Schedules:

* Automated backups
* Health monitoring tasks

------------------------------------------------------------------------------------------------------------

Storage

Backup files are stored in:

inventory-project/backups/

Format:

inventory_db_YYYYMMDD_HHMMSS.sql.gz

------------------------------------------------------------------------------------------------------------


Monitoring Workflow

Health Check Script
          |
          v
    PostgreSQL Test
          |
          v
Backup Verification
          |
          v
  Disk Space Check
          |
          v
Health Status Report
