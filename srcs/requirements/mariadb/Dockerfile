FROM    debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server \
    mariadb-client

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.conf
COPY ./tools/mariadb.sh /usr/local/bin
RUN chmod +x /usr/local/bin/mariadb.sh

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/mariadb.sh"]
    