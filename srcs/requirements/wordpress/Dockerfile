# Debian 기반 이미지 사용
FROM debian:12.2-slim

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql wordpress && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# WordPress 설정 파일 복사
COPY wp-config.php /var/www/html/wordpress/wp-config.php

# php-fpm 설정
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

# php-fpm 실행
CMD ["php-fpm7.3", "-F"]
