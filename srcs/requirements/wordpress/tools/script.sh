#!/bin/bash

sleep 5

wp core download --allow-root

wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL" --skip-email --allow-root

wp theme install twentyseventeen --activate

mkdir -p /var/run/php

php-fpm7.3 -F #launchFPM in foreground and ignoring damozide from conf file
