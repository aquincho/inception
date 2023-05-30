NAME = inception

SRC_DIR = srcs

COMPOSE_FILE = $(SRC_DIR)/docker-compose.yml
ENV_FILE = $(SRC_DIR)/.env

all: build

build:
	docker compose -f $(COMPOSE_FILE) -p $(NAME) up -d --build

down:
	docker compose -f $(COMPOSE_FILE) -p $(NAME) down

PHONY: all build down