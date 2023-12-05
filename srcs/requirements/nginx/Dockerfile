FROM debian:bullseye

#install nginc openssl
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    mkdir -p /etc/nginx/ssl && \
    openssl req -newkey rsa:4096 -x509 -sha256 -days 365 \
    -nodes -out /etc/nginx/ssl/aquincho.crt \
    -keyout /etc/nginx/ssl/aquincho.key \
    -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=aquincho/CN=aquincho.42.fr" && \
    mkdir -p /run/nginx

#copy config file
COPY    ./conf/nginx.conf /etc/nginx/conf.d

RUN chmod 777 /var/www/html 
	#&& \
    #chown -R www-data:www-data /var/www/html

#open port 443
EXPOSE  443
#EXPOSE  80

#start nginx
CMD ["nginx", "-g", "daemon off;"]