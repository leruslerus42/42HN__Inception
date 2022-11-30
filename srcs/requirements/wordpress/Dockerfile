FROM debian:buster


RUN apt-get update && apt-get upgrade && \
	apt-get install -y php7.3-fpm \
    php7.3-mysqli \
    mariadb-client \
    curl && \
	apt-get update -y

RUN mkdir -p /var/www/wordpress
WORKDIR /var/www/wordpress

RUN curl -O  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar 
RUN	mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/wp-config.php /var/www/wordpress/

COPY ./tools/script.sh /usr/local/bin

RUN chmod +x /usr/local/bin/script.sh

EXPOSE 9000

ENTRYPOINT [ "/usr/local/bin/script.sh" ]