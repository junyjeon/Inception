FROM    alpine:3.16

EXPOSE  3306

RUN apk update && \
    apk upgrade && \
    apk add openrc && \
    apk add mysql mysql-client && \
    apk add curl && \
    mkdir -p /run/mysqld && \
    chown -R mysql:mysql /run/mysqld && \
    mkdir -p /var/lib/mysql && \
    chown -R mysql:mysql /var/lib/mysql

ADD /tools/mariadb.sh  /tmp/mariadb.sh
ADD ./conf/mariadb-server.conf /etc/my.cnf.d/mariadb-server.cnf

CMD ["sh", "tmp/mariadb.sh"]
