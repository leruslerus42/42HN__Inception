FROM debian:buster


RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y mariadb-server

COPY ./tools/create_db_user.sh /

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

 ENTRYPOINT [ "./create_db_user.sh" ]
