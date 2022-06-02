NAME		= inception
SRCS		= ./srcs/docker-compose.yml


$(NAME)		:	$(SRCS)
	@mkdir -p ${HOME}/data/database
	@mkdir -p ${HOME}/data/webserver
	@mkdir -p ${HOME}/data/minetest
	@docker system prune -f
	@docker-compose -f $(SRCS) up --build -d

all		:	$(NAME)

clean		:	$(SRCS)
	@docker-compose -f $(SRCS) down

fclean		:	$(SRCS)
	@docker-compose -f $(SRCS) rm

up		:	all

down		:	clean

show		:
	@docker ps -a

tls		:
	@bash checktls.sh

domain		:
	@echo "Need admin to add domain to /etc/hosts file"
	@sudo echo "127.0.0.1 graja.42.fr" >> /etc/hosts

