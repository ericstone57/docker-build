#!/usr/bin/env bash

sed -i "s/;date.timezone =.*/date.timezone = Asia\/Shanghai/" /etc/php5/fpm/php.ini
sed -i "s/;date.timezone =.*/date.timezone = Asia\/Shanghai/" /etc/php5/cli/php.ini
