FROM	alpine:3.16.0
RUN	apk add vsftpd vim
RUN	mkdir -p /var/run/vsftpd
COPY	vsftpd.conf /etc/vsftpd.conf
COPY	vsftpd.banner /etc/vsftpd.banner

EXPOSE	21 
CMD	["vsftpd"]
