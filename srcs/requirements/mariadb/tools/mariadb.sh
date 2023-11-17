mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

/usr/bin/mysqld --user=mysql --bootstrap << EOF
use mysql;
flush privileges;

alter user 'root'@'localhost' identified by '$DB_ROOT_PW';
flush privileges;

create database $DB_NAME;
create user '$DB_USER'@'%' identified by '$DB_USER_PW';
grant all privileges on $DB_NAME.* to '$DB_USER'@'%';
flush privileges;
EOF

echo Complete set mariadb!!

exec /usr/bin/mysqld --user=mysql --console	
