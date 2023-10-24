all: build

build:
	docker compose -f srcs/docker-compose.yml up --build -d

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
