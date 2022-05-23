#!/bin/bash
unzip ./latest.zip && rm ./latest.zip
mv ./wordpress/* html && rmdir ./wordpress
exec php-fpm7.3 -F
