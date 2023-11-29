#!/bin/bash

# Define variables
DB_NAME="wordpress"

# Set the current date for the dump file
DATE=$(date +"%Y%m%d_%H%M%S")
DUMP_FILE="/etc/mysql/conf.d/dumps/${DB_NAME}_dump_$DATE.sql"

# Run mysqldump command
mysqldump --defaults-extra-file=/home/bro.cnf "$DB_NAME" > "$DUMP_FILE"
