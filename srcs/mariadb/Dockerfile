FROM	debian:buster
RUN	apt-get update && apt-get install -y vim mariadb-server mariadb-client
RUN	service mysql start

CMD	["mysqld"]
EXPOSE 3306

