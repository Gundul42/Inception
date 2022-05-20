FROM	debian:buster
RUN	apt-get update && apt-get install -y vim mariadb-server mariadb-client
COPY	./my.cnf /etc/mysql/my.cnf

CMD	["mysqld", "--user=mysql"]
EXPOSE 3306

