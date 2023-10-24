#!/bin/bash

# MariaDB 서버 시작
mysqld_safe &

# 서버가 시작될 때까지 대기
sleep 5

# 사용자 생성
mysql -e "CREATE USER 'user1'@'%' IDENTIFIED BY 'password1';"
mysql -e "CREATE USER 'user2'@'%' IDENTIFIED BY 'password2';"

# 데이터베이스 생성
mysql -e "CREATE DATABASE wordpress;"

# 사용자에게 데이터베이스 권한 부여
mysql -e "GRANT ALL ON wordpress.* TO 'user1'@'%';"
mysql -e "GRANT ALL ON wordpress.* TO 'user2'@'%';"

# 변경 사항 적용
mysql -e "FLUSH PRIVILEGES;"

# MariaDB 서버 종료
mysqladmin shutdown
