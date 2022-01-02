#!/bin/bash
apt update
apt install -y mariadb-server mariadb-client
drush si --db-url=mysql://root:password@db:3306/drupal
drush en devel
php-fpm