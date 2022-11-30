#!/bin/bash

if [ ! -d "var/lib/mysql/wordpress" ]; then


service mysql start


sleep 3


mysql -u root <<DATA
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%';
SET PASSWORD for 'root'@'localhost' = PASSWORD('$DB_PASS_ROOT')
DATA

service mysql stop


sleep 3


echo "database created"

else
echo "database found"

fi


mysqld_safe
