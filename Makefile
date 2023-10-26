INTRA_ID=junyojeo
DB_VOLUME=/home/${INTRA_ID}/data/mariadb
WORDPRESS_VOLUME=/home/${INTRA_ID}/data/wordpress

all: build up

build:
	sudo mkdir -p ${DB_VOLUME}
	sudo mkdir -p ${WORDPRESS_VOLUME}
	sudo chown -R junyojeo:junyojeo /home/junyojeo/data
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
	make up

.PHONY: all build down re
