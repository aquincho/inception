#!bin/sh

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv -f   wp-cli.phar /usr/local/bin/wp
wp --info
wp core download --allow-root --path=$WORDPRESS_PATH
wp config create --dbname=$MARIADB_DBNAME \
    --dbuser=$MARIADB_USER \
    --dbpass=$MARIADB_PASSWORD \
    --dbhost=mariadb \
    --path=$WORDPRESS_PATH \
    --skip-check \
    --allow-root
wp core install --path=$WORDPRESS_PATH \
    --url=$DOMAIN_NAME \
    --url=$DOMAIN_NAME \
    --title=$WORDPRESS_TITLE \
    --admin-user=$WORDPRESS_ADMIN_USER \
    --admin-password=$WORDPRESS_ADMIN_PASSWORD \
    --skip-email \
    --allow-root
wp user create --path=$WORDPRESS_PATH \
    $WORDPRESS_USER \
    $WORDPRESS_EMAIL \
    --role=author \
    --user_pass=$WORDPRESS_PASSWORD \
    --allow-root

exec php-fpm7.3 -F

#fonctionnenet wp cli a definir