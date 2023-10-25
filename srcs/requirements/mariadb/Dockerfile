# Debian 기반 이미지 사용
FROM mariadb:11.1.2

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# MariaDB 설정 파일 복사 (필요한 경우)
COPY my.cnf /etc/mysql/my.cnf

# MariaDB 실행
CMD ["mysqld"]
