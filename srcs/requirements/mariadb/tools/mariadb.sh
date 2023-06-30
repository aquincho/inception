#!/bin/sh

mkdir -p /home/aquincho/data/wordpress
mkdir -p /home/aquincho/data/db

service mysql start;

#if [ ! -d "/var/run/mysqld"]; then
#    mkdir -p /var/run/mysqld
#fi



#service mysql start;

#/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2
#service mysql start;

#mysql -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DBNAME}\`;"
#mysql -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DBNAME}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"

mysql -uroot -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DBNAME;"
mysql -uroot -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON $MARIADB_DBNAME.* TO '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';"
mysql -uroot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PASSWORD';"
mysql -uroot -p$MARIADB_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"
mysql -uroot -p$MARIADB_ROOT_PASSWORD -e "SHOW DATABASES;"

mysqladmin -uroot -p$MARIADB_ROOT_PASSWORD shutdown
#service mysql start;
exec mysqld_safe;
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql
