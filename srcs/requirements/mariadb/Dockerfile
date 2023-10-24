# Debian 기반 이미지 사용
FROM debian:buster-slim

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# MariaDB 설정 파일 복사
COPY my.cnf /etc/mysql/my.cnf

# 초기화 스크립트 복사
COPY init.sh /usr/local/bin/

# MariaDB 실행 및 초기화
CMD ["sh", "-c", "/usr/local/bin/init.sh && exec mysqld"]
