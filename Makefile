all: build

build:
	docker-compose -f srcs/docker-compose.yml up --build -d

down:
	docker-compose -f srcs/docker-compose.yml down

re:
	make down
	make build

.PHONY: all build down re
