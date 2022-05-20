FROM	debian:buster
RUN	apt-get update && apt-get install -y vim openssl nginx

COPY	$PWD/config/dhparam.pem /etc/nginx/dhparam.pem 
COPY	$PWD/config/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
COPY	$PWD/config/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY	$PWD/config/nginx.conf /etc/nginx/nginx.conf
COPY	$PWD/config/graja.42.fr.conf /etc/nginx/sites-available/default


# this is exec form, which is recommanded to use 
#CMD	echo "127.0.0.1 graja.42.fr" >> etc/hosts

CMD	["nginx", "-g", "daemon off;"]
# this would be the shell form
# container would stop because
# PID 1 is bash and not nginx
#
#CMD	nginx -g "daemon off;"

EXPOSE 443
