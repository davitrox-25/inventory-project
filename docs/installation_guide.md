Installation Guide

Overview

This guide explains how to deploy the Automated Inventory Database Server on a fresh Ubuntu Server installation.

-------------------------------------------------------------------------------------------------------------------------

Requirements

* Ubuntu Server
* Git
* PostgreSQL

-------------------------------------------------------------------------------------------------------------------------

Update the System

sudo apt update
sudo apt upgrade -y

-------------------------------------------------------------------------------------------------------------------------

Install Git

sudo apt install git -y

Verify:

git --version

-------------------------------------------------------------------------------------------------------------------------

Install PostgreSQL

sudo apt install postgresql postgresql-contrib -y

Verify:

sudo systemctl status postgresql

-------------------------------------------------------------------------------------------------------------------------

Clone the Repository

git clone https://github.com/davitrox-25/inventory-project

Enter the project directory:

cd inventory-project

-------------------------------------------------------------------------------------------------------------------------

Create the Database

sudo -u postgres psql

CREATE DATABASE inventory_db;

Connect:

\c inventory_db

Exit:

\q

-------------------------------------------------------------------------------------------------------------------------

Create Database Tables

sudo -u postgres psql inventory_db < sql/create_tables.sql

-------------------------------------------------------------------------------------------------------------------------

Load Sample Data

sudo -u postgres psql inventory_db < sql/sample_data.sql

-------------------------------------------------------------------------------------------------------------------------

Verify Tables

sudo -u postgres psql inventory_db

\dt

Expected tables:

* categories
* suppliers
* products
* warehouses
* inventory
* inventory_movements

-------------------------------------------------------------------------------------------------------------------------

Configure Backup Script

Make scripts executable:

chmod +x scripts/backup_db.sh
chmod +x scripts/restore_db.sh
chmod +x scripts/check_db_health.sh

-------------------------------------------------------------------------------------------------------------------------

Test Backup

./scripts/backup_db.sh

Verify:

ls backups/

-------------------------------------------------------------------------------------------------------------------------

Test Health Check

./scripts/check_db_health.sh

-------------------------------------------------------------------------------------------------------------------------

Configure Cron Jobs

Edit cron:

crontab -e

Example:


Daily Database Backup

0 2 * * *  /home/davitrox/inventory-project/scripts/backup_db.sh >> /home/davitrox/inventory-project/backups/backup.log 2>&1

Hourly Health Check

0 * * * *  /home/davitrox/inventory-project/scripts/check_db_health.sh >> /home/davitrox/inventory-project/logs/health.log 2>&1

Verify:

sudo crontab -u postgres -l

-------------------------------------------------------------------------------------------------------------------------

Test Restore

./scripts/restore_db.sh backups/example_backup.sql.gz

-------------------------------------------------------------------------------------------------------------------------

Project Documentation

Additional documentation:

* docs/database_schema.md
* docs/ERD.md
* docs/recovery_procedure.md
* docs/system_architecture.md

-------------------------------------------------------------------------------------------------------------------------

Deployment Complete

The system is now ready for:

* Database Management
* Automated Backups
* Health Monitoring
* Disaster Recovery
