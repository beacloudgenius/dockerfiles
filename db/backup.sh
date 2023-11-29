#!/bin/bash

# Define variables
DB_NAME="wordpress"

# Set the current date for the dump file
DATE=$(date +"%Y%m%d_%H%M%S")
DUMP_FILE="/etc/mysql/conf.d/backup/${DB_NAME}_backup_$DATE.sql"

# Run mysqlbackup command
mariabackup --defaults-extra-file=/home/bro.cnf \
   --backup \
   --target-dir=/etc/mysql/conf.d/backup/
