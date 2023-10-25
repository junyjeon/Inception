FROM wordpress:6.3.2

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# WordPress 설정 파일 복사 (필요한 경우 주석 해제)
# COPY wp-config.php /var/www/html/wp-config.php

# 필요한 환경 변수 설정
ENV WORDPRESS_DB_HOST=mariadb:3306
ENV WORDPRESS_DB_USER=wordpress_user
ENV WORDPRESS_DB_PASSWORD=wordpress_password
ENV WORDPRESS_DB_NAME=wordpress_db

# 포트 9000 열기
EXPOSE 9000

# php-fpm 설정
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

# php-fpm 실행
CMD ["php-fpm7.3", "-F"]
