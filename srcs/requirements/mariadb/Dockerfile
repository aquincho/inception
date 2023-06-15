FROM    debian:buster

RUN apt-get update && apt-get upgrade &&\
    apt-get install -y mariadb-server

#RUN service mysql start

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/mariadb.conf /etc/mysql/my.cnf
COPY ./tools/mariadb.sh /usr/local/bin

RUN mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/run/mysqld && \
    chmod 777 /var/run/mysqld
#RUN mkdir -p /var/lib/mysql && \
#    chown -R mysql:mysql /var/lib/mysql && \
#    chmod 777 /var/lib/mysql


RUN chmod +x /usr/local/bin/mariadb.sh




#RUN sh /etc/init.d/mysqld
#RUN mysql -uroot -e "CREATE DATABASE IF NOT EXISTS db;"
#RUN mysql -uroot -e "CREATE USER 'user'@'%' IDENTIFIED BY 'pwd';"
#RUN mysql -uroot -e "GRANT ALL ON db TO 'user'@'%';"
#RuN mysql -uroot -e "FLUSH PRIVILEGES;"

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/mariadb.sh"]
    