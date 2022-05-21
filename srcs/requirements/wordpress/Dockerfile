FROM	debian:buster
RUN	apt-get update && apt-get install -y vim php php-common php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath wget

WORKDIR	/usr/share/nginx/html
RUN	wget https://wordpress.org/latest.zip #> /usr/share/nginx/html/latest.zip
CMD	["bash"]
