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

