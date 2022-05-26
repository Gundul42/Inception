FROM	debian:buster
RUN	apt-get update && apt-get install -y vim php php-common php-cli php-fpm php-json php-pdo \
	php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath wget unzip \
	mariadb-client

WORKDIR	/var/www
RUN	usermod -u 1000 www-data && wget https://wordpress.org/latest.zip \
	&& chown www-data:www-data /var/www/latest.zip && mkdir /run/php

COPY	./config/startup.sh /tmp/startup.sh
COPY	./config/wp-config.php /tmp/wp-config.php
COPY	./config/www.conf /etc/php/7.3/fpm/pool.d/www.conf

#USER	www-data
#EXPOSE	9000

CMD	["bash", "/tmp/startup.sh"]

#Start php-fpm in the foreground
#CMD	["tail" ,"-f", "/dev/null"]
