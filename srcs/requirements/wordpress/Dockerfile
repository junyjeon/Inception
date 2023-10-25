# Debian 기반 이미지 사용
FROM debian:buster

# 필요한 패키지 설치
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl mariadb-client php7.3-fpm php-mysql

# WP-CLI 설치
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin && \
    ln -sf /usr/local/bin/wp-cli.phar /usr/local/bin/wp-cli && \
    mkdir -p /var/www/html/wordpress /run/php && \
    usermod -G www-data -a www-data && \
    chown -R www-data:www-data /var/www/

# WordPress 다운로드 및 설치
RUN curl -O https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz --strip-components=1 -C /var/www/html/wordpress && \
    rm latest.tar.gz && \
    chown -R www-data:www-data /var/www/html/wordpress

# install.sh 스크립트 복사 및 실행 권한 부여
COPY ./tools/install.sh /install.sh
RUN chmod +x /install.sh

# php-fpm 설정 파일 복사
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# 작업 디렉토리 설정
WORKDIR /var/www/html/wordpress

# 포트 9000 열기
EXPOSE 9000

# 컨테이너 시작 시 install.sh 스크립트 실행
ENTRYPOINT ["sh", "/install.sh", "daemon off;"]
