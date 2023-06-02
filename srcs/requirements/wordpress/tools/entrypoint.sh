#!bin/sh

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv -f   wp-cli.phar /usr/local/bin/wp

wp core download --allow-root --path="/var/www/html"
cp ./config-php /var/www/html/wp-config.php

wp core install
#fonctionnenet wp cli a definir