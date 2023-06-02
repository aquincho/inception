FROM debian:buster

RUN apt-get update && apt-get install -y wget && \
    apt-get install -y php8.2 php-fpm php-mysql && \
    wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
    tar xvf /tmp/wordpress.tar.gz -C /var/www/html && \
    rm /tmp/wordpress.tar.gz && \
    chown -R www-data:www-data /var/www/html/wordpress && \
    chmod -R 755 /var/www/html/wordpress && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

EXPOSE  9000

ENTRYPOINT  ["./entrypoint.sh"]