#!/bin/bash

# Run mysqlbackup command
mariabackup --defaults-extra-file=/home/bro.cnf \
   --backup \
   --target-dir=/etc/mysql/conf.d/backup/
