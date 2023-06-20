FROM debian:buster

RUN apt-get update &&  apt-get upgrade && \
    apt-get install -y wget && \
    apt-get install -y php7.3 php-fpm php-mysql

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN mkdir -p /var/www/html
RUN tar xvf /tmp/wordpress.tar.gz -C /var/www/html
RUN rm /tmp/wordpress.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress && \
    chmod -R 755 /var/www/html/wordpress
#RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

ENTRYPOINT  ["./entrypoint.sh"]