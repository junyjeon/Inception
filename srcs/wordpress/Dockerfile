# WordPress Dockerfile
FROM wordpress:latest
COPY ./wordpress.conf /etc/wordpress/wordpress.conf
ENV WORDPRESS_DB_HOST mysql
ENV WORDPRESS_DB_USER wordpress_user
ENV WORDPRESS_DB_PASSWORD wordpress_password
ENV WORDPRESS_DB_NAME wordpress
