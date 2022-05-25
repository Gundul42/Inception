#!/bin/bash
chown www-data:www-data /var/www/html
unzip ./latest.zip && rm ./latest.zip
chown  -R www-data:www-data /var/www/wordpress
mv -n ./wordpress/* html && rmdir ./wordpress
exec php-fpm7.3 -F
