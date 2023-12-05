FROM    debian:bullseye

RUN apt-get update && apt-get upgrade && \
    apt-get install -y wget && \
    apt-get install -y php7.3 php-fpm php-mysql \
    mariadb-client

RUN wget -O /tmp/wordpress.tar.gz https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz
RUN mkdir -p /var/www/html
RUN tar -xvf /tmp/wordpress.tar.gz -C /var/www/html
RUN rm /tmp/wordpress.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN chmod -R 755 /var/www/html/wordpress



#COPY    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY    ./tools/wordpress.sh /tmp/wordpress.sh

RUN mkdir -p /run/php

#EXPOSE  9000

ENTRYPOINT ["sh", "/tmp/wordpress.sh"]