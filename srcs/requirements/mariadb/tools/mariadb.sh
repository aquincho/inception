#!/bin/sh

#mkdir -p /home/aquincho/data/wordpress
#mkdir -p /home/aquincho/data/db

#service mysqldstart
/etc/init.d/mysql start
#/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2
#service mysql start;

#service mysql restart;

#mysql -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DBNAME}\`;"
#mysql -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DBNAME}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"

#mysql -uroot -p -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rt_pwd';"
#mysql -uroot -prt_pwd -e "FLUSH PRIVILEGES;"
#echo usr
#mysql -uroot -prt_pwd -e "CREATE DATABASE IF NOT EXISTS dbtest;"
#mysql -uroot -prt_pwd -e "CREATE USER IF NOT EXISTS \`user\`@'localhost' IDENTIFIED BY 'pwd';"
#mysql -uroot -prt_pwd -e "GRANT ALL PRIVILEGES ON \`dbtest\`.* TO \`user\`@'%' IDENTIFIED BY 'pwd';"
#mysql -uroot -p -e "ALTER USER 'root'@'%' IDENTIFIED BY 'rt_pwd';"
#echo "flush"
#mysql -uroot -prt_pwd -e "FLUSH PRIVILEGES;"
#mysqlshow -uroot -prt_pwd 

echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'rt_pwd'; FLUSH PRIVILEGES;" | mysql -uroot

#Create database and user in the database for wordpress

echo "CREATE DATABASE IF NOT EXISTS db; GRANT ALL ON db.* TO 'user'@'%' IDENTIFIED BY 'pwd'; FLUSH PRIVILEGES;" | mysql -u root
mysqlshow -uroot -prt_pwd 

/etc/init.d/mysql stop
echo fin
#mysqladmin -uroot shutdown
exec mysqld_safe
#/usr/bin/mysqld --user=root --datadir=/var/lib/mysql
