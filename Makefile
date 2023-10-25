all: build up

build:
	sudo docker build -t nginx:1.24.0 srcs/requirements/nginx
	sudo docker build -t wordpress:6.3.2 srcs/requirements/wordpress
	sudo docker build -t mariadb:11.1.2 srcs/requirements/mariadb

up:
	sudo docker compose -f srcs/docker-compose.yml up -d

down:
	sudo docker compose -f srcs/docker-compose.yml down

clean:
	sudo docker compose -f srcs/docker-compose.yml down --rmi all

re:
	make down
	make build

.PHONY: all build down re
