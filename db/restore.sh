#!/bin/bash

directory="/etc/mysql/conf.d/backups"

if [ -z "$(ls -A "$directory")" ]; then
    echo "No Backups found!"
else
    mysql --defaults-extra-file=/etc/mysql/conf.d/custom-my.cnf wordpress < $(ls -t1 /etc/mysql/conf.d/backups | head -n 1)
fi
