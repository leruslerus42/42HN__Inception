#Docker image will now be based on the Debian Buster Image
FROM debian

#Telling Docker to install the nginx package from the official package repo
run apt-get -y update && apt-get -y install nginx

#Now every time we build our Docker image, Docker copies the config file to the target dir
COPY ./conf/nginx.conf /etc/nginx/site-available/default

EXPOSE 80/tcp

#Run Nginx whenever Docker img launches:
#-g -> specifices a directive to nginx
#daemon off -> dir will be disable the self-daemonizing behaviour of nginx
CMD ["nginx", "-g", "daemon off;"]