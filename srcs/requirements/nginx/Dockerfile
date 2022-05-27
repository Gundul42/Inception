FROM	debian:buster
RUN	apt-get update && apt-get install -y vim openssl nginx

COPY	$PWD/config/dhparam.pem /etc/nginx/dhparam.pem 
COPY	$PWD/config/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
COPY	$PWD/config/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY	$PWD/config/nginx.conf /etc/nginx/nginx.conf
COPY	$PWD/config/graja.42.fr.conf /etc/nginx/sites-available/graja.42.fr
COPY	$PWD/config/webserver.conf /etc/nginx/sites-available/default

#make port 443 available from outside
EXPOSE 443
CMD	["nginx", "-g", "daemon off;"]
