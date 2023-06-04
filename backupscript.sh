#!/bin/bash

# MySQL Credentials
MYSQL_USER="root"
MYSQL_PASSWORD="rootpassword"

# Dump file path
DUMP_FILE="/root/mysql_dump.sql"

# Log in to MySQL and dump the 'mysql' database
mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "mysqldump --single-transaction --routines --triggers mysql > $DUMP_FILE"

echo "MySQL database dumped successfully to $DUMP_FILE"
