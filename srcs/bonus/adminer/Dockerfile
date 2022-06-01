FROM	alpine:3.16.0
RUN	apk --update add bash vim wget
RUN	wget "http://www.adminer.org/latest.php" && mv latest.php /tmp/adminer.php && \
	adduser -u 1000 -S www-data && chown -R www-data:www-data /tmp/adminer.php && \
	chmod 755 /tmp/adminer.php
COPY	index.html /tmp/index.html
COPY	startup.sh /tmp/startup.sh
RUN	chown www-data /tmp/index.html

CMD	["bash", "/tmp/startup.sh"]
