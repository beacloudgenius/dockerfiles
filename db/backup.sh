#!/bin/bash

# Define variables
DB_USER="username"
DB_NAME="wordpress"

# Set the current date for the backup file
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="/etc/mysql/conf.d/backups/${DB_NAME}_backup_$DATE.sql"

# Run mysqldump command
mysqldump --defaults-extra-file=/etc/mysql/conf.d/custom-my.cnf "$DB_NAME" > "$BACKUP_FILE"
