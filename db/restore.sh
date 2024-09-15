#!/bin/bash

backup=$(ls -t1 /etc/mysql/conf.d/backups | head -n 1)

if [ -z ${backup} ]; then
    echo "No Backups found!"
else
    mysql --defaults-extra-file=/home/bro.cnf wordpress < /etc/mysql/conf.d/backups/${backup}
fi
