FROM	debian:buster
RUN	apt-get update && apt-get install -y vim php php-common php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath wget unzip

WORKDIR	/usr/share/nginx/html
RUN	wget https://wordpress.org/latest.zip && unzip latest.zip && rm latest.zip
RUN	mkdir /run/php
CMD	["php-fpm7.3", "-F"]
EXPOSE 9000
