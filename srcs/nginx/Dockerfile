FROM	debian:buster
RUN	apt-get update && apt-get install -y nginx

# this is exec form, which is recommanded to use 
CMD	["nginx", "-g", "daemon off;"]

# this would be the shell form
# container would stop because
# PID 1 is bash and not nginx
#
#CMD	nginx -g "daemon off;"

EXPOSE 443
