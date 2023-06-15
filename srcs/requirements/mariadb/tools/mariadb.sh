#!/bin/sh

mkdir -p /home/aquincho/data/wordpress
mkdir -p /home/aquincho/data/db

service mysql start;

#/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2
#service mysql start;

#mysql -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DBNAME}\`;"
#mysql -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DBNAME}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"

mysql -uroot -e "CREATE DATABASE IF NOT EXISTS db;"
#mysql -uroot -e "CREATE USER IF NOT EXISTS \`user\`@'localhost' IDENTIFIED BY 'pwd';"
#mysql -uroot -e "GRANT ALL PRIVILEGES ON \`db\`.* TO \`user\`@'%' IDENTIFIED BY 'pwd';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rt_pwd';"
#mysql -uroot -e "FLUSH PRIVILEGES;"

mysqladmin -uroot shutdown
#exec mysqld_safe
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql
