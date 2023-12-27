#!/bin/bash

if [ $(ls /var/lib | grep -c $DATABASE) -ne 0 ] 
then
    echo "mariadb already installed"
else
service mariadb start

MYSQL_PWD=$DATABASE_ROOT_PASSWORD mysql <<EOF
CREATE DATABASE IF NOT EXISTS $DATABASE;
CREATE USER IF NOT EXISTS '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_PASSWORD';
GRANT ALL PRIVILEGES ON $DATABASE.* TO '$DATABASE_USER'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DATABASE_ROOT_PASSWORD';
CREATE USER IF NOT EXISTS '$DATABASE_USER2'@'%' IDENTIFIED BY '$DATABASE_PASSWORD2';

FLUSH PRIVILEGES;
EOF
mysqladmin -u root -p$DATABASE_ROOT_PASSWORD shutdown
fi
mysqld_safe