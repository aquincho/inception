FROM debian:buster

#install nginc openssl
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    mkdir /etc/nginx/ssl && \
    openssl req -newkey rsa:4096 -x509 -sha256 -days 365 \
    -nodes -out /etc/nginx/ssl/aquincho.crt \
    -keyout /etc/nginx/ssl/aquincho.key \
    -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=aquincho/CN=aquincho.42.fr" && \
    mkdir -p /run/mginx

COPY    ./conf/nginx.conf /etc/nginx/conf.d

EXPOSE  443

CMD ["nginx", "-g", "daemon off;"]