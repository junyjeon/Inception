FROM alpine:3.16

EXPOSE 9000

RUN apk update && apk upgrade && \
    apk add php8 && \
    apk add php8-fpm && \
    apk add php8-phar && \
    apk add php8-json && \
    apk add php8-exif && \
    apk add php8-mysqli && \
    apk add php8-mysqlnd && \
    apk add php8-openssl && \
    apk add mariadb-client && \
    apk add curl iputils && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/bin/wp && \

    ADD conf/www.conf /etc/php8/php-fpm.d/www.conf
ADD conf/wp-config.php /tmp/wp-config.php
ADD tools/wordpress.sh /usr/bin/wordpress.sh

WORKDIR /var/www/html

CMD ["/bin/sh", "/usr/bin/wordpress.sh"]

