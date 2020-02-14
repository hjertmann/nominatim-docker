#!/bin/bash
cp /app/local.php /app/src/build/settings/local.php
sed -i -e "s#_DB_URI_#$DATABASE_URI#g" /app/src/build/settings/local.php
/usr/sbin/apache2ctl -D FOREGROUND
tail -f /var/log/apache2/error.log

