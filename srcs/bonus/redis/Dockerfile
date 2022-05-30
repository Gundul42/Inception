#FROM	debian:buster
#RUN	apt update && apt install -y vim redis-server 
FROM	alpine:3.16.0
RUN	apk --update add redis

CMD	["redis-server", "--port 7777"]
