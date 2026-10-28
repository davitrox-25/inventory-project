Automated Inventory Database Server

A hands-on Linux and PostgreSQL project focused on database administration, backup automation, disaster recovery, and system management.

-----------------------------------------------------------------------------------------------------------------------


Project Overview

This project simulates a real-world inventory management environment running on Ubuntu Server with PostgreSQL.

The objective is to demonstrate:

* Linux system administration
* PostgreSQL database management
* Relational database design
* Backup and recovery procedures
* Bash scripting
* Cron job automation
* Version control with Git and GitHub
 
-----------------------------------------------------------------------------------------------------------------------


Technologies Used

* Ubuntu Server
* PostgreSQL
* Bash
* Cron
* Git
* GitHub

-----------------------------------------------------------------------------------------------------------------------

Database Structure

The database includes the following tables:

* categories
* suppliers
* products
* warehouses
* inventory
* inventory_movements

Additional documentation:

* docs/database_schema.md
* docs/ERD.md

-----------------------------------------------------------------------------------------------------------------------

Features

Inventory Management

* Product catalog
* Supplier management
* Warehouse management
* Inventory tracking
* Inventory movement history


Database Administration

* PostgreSQL database deployment
* Relational schema design
* Foreign key implementation
* SQL JOIN queries

Backup Automation

* Automated PostgreSQL backups
* Timestamped backup files
* Compressed backup archives (.sql.gz)
* Scheduled execution using cron

Disaster Recovery

* Database restoration procedures
* Restore automation script
* Recovery documentation

Backup Retention

* Automatic cleanup of old backup archives
* Seven-day retention policy

-----------------------------------------------------------------------------------------------------------------------
Project Structure

inventory-project/
│
├── backups/
├── docs/
│   ├── database_schema.md
│   ├── ERD.md
│   └── recovery_procedure.md
│
├── scripts/
│   ├── backup_db.sh
│   └── restore_db.sh
│
├── sql/
│   ├── create_tables.sql
│   ├── sample_data.sql
│   └── database_design.md
│
└── README.md


-----------------------------------------------------------------------------------------------------------------------
Backup Workflow

Create a backup:

./scripts/backup_db.sh

Generated output:

inventory_db_YYYYMMDD_HHMMSS.sql.gz

-----------------------------------------------------------------------------------------------------------------------
Restore Workflow

Restore a database from a backup file:

./scripts/restore_db.sh backups/backup_file.sql.gz

-----------------------------------------------------------------------------------------------------------------------
Learning Outcomes

Through this project I practiced:

* PostgreSQL administration
* Linux server management
* Bash scripting
* Scheduled task automation
* Database backup strategies
* Database recovery procedures
* Git workflow
* Technical documentation

-----------------------------------------------------------------------------------------------------------------------
Future Improvements

* ERD image integration
* Database monitoring
* Backup verification
* Email notifications
* Role-based database access
* Docker deployment
* Automated health checks

-----------------------------------------------------------------------------------------------------------------------

Author
David

Linux • PostgreSQL • Bash • SQL
