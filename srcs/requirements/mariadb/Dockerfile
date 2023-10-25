# Debian 기반 이미지 사용
FROM debian:buster-slim

# MariaDB 설정 파일, init.sh 복사
COPY tools/init.sh /init.sh

# 필요한 패키지 설치
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y mariadb-server mariadb-client && \
    mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/run/mysqld

COPY conf/my.conf /etc/mysql/my.cnf

# init.sh 파일 실행 권한 부여
RUN chmod +x /init.sh

EXPOSE 3306

# MariaDB 실행
CMD ["/init.sh"]
