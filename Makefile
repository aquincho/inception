NAME = inception

SRC_DIR = srcs

COMPOSE_FILE = $(SRC_DIR)/docker-compose.yml
ENV_FILE = $(SRC_DIR)/.env

all: build

build:
	mkdir -p /home/aquincho/data/db
	mkdir -p /home/aquincho/data/wordpress
	docker compose -f $(COMPOSE_FILE) -p $(NAME) up -d --build

down:
	docker compose -f $(COMPOSE_FILE) -p $(NAME) down

stop:
	docker compose -f $(COMPOSE_FILE) -p $(NAME) down

status:
	docker compose -f $(COMPOSE_FILE) -p $(NAME) ps

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q) > /dev/null;
	docker network rm network > /dev/null;
#	docker network rm $$(docker network ls -q);

PHONY: all build down