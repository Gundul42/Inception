FROM	debian:buster
RUN	apt-get update && apt-get install -y vim mariadb-server mariadb-client
COPY	./config/my.cnf /etc/mysql/my.cnf
COPY	./config/startup.sh /tmp/startup.sh
COPY	./config/dbinit.sql /tmp/dbinit.sql

CMD	["bash", "/tmp/startup.sh"]
