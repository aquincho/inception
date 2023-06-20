FROM    debian:buster

RUN apt-get update && apt-get upgrade &&\
    apt-get install -y mariadb-server

#RUN service mysql start

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/mariadb.conf /etc/mysql/my.
COPY ./conf/mariadb.conf /etc/my.cnf
COPY ./conf/mariadb.conf ~/my.cnf
COPY ./tools/mariadb.sh /tmp/mariadb.sh

#RUN mkdir -p /var/run/mysqld 
#RUN touch /var/run/mysqld/mysqld.sock
#RUN touch /var/run/mysqld/mysqld.pid
#RUN chown -R mysql:mysql /var/run/mysqld/mysqld.sock && \
#    chown -R mysql:mysql /var/run/mysqld/mysqld.pid && \
#    chmod -R 644 /var/run/mysqld/mysqld.sock
#RUN mkdir -p /var/lib/mysql && \
#    chown -R mysql:mysql /var/lib/mysql && \
#    chmod 777 /var/lib/mysql
#RUN chown -R mysql:mysql /var/run/mysqld

#RUN service mysql start

RUN chmod +x /tmp/mariadb.sh

#RUN service mysql restart


#RUN sh /etc/init.d/mysqld
#RUN mysql -uroot -e "CREATE DATABASE IF NOT EXISTS db;"
#RUN mysqlshow
#RUN mysql -uroot -e "CREATE USER 'user'@'%' IDENTIFIED BY 'pwd';"
#RUN mysql -uroot -e "GRANT ALL ON db TO 'user'@'%';"
#RuN mysql -uroot -e "FLUSH PRIVILEGES;"



ENTRYPOINT ["sh", "/tmp/mariadb.sh"]

EXPOSE 3306