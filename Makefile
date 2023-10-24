all: build

build:
	docker build -t nginx:1.24.0 ./nginx
	docker build -t wordpress:6.3.2 ./wordpress
	docker build -t mariadb:11.1.2 ./db

up:
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

clean:
	docker compose -f srcs/docker-compose.yml down --rmi all

re:
	make down
	make build

.PHONY: all build down re
