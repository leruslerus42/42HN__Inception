FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y nginx openssl php-fpm

RUN openssl req -newkey rsa:2048 \
                -x509  \
                -nodes \
                -days 365 \ 
                -keyout /etc/ssl/private/nginx-selfsigned.key \             
                -out /etc/ssl/certs/nginx-selfsigned.crt    \
                -subj "/CN=rrajaobe.42.fr" 

COPY ./conf/nginx.conf /etc/nginx/sites-available/default/.

CMD ["nginx", "-g", "daemon off;"]
