# 42HN__Inception

WordPress is a free and open-source Content Management System (CMS) built on a MySQL database with PHP processing. Thanks to its extensible plugin architecture and templating system, most of its administration can be done through the web interface. This is a reason why WordPress is a popular choice when creating different types of websites, from blogs to product pages to eCommerce sites.

For let WordPress correctly run I used a LEMP(Linux, Nginx, MySQL, and PHP). By using tools like Docker and Docker Compose, instead of installing every single component by hand, that could be time and resource consuming, I streamlined this process of setting the LEMP by using docker images, which standardize things like libraries, configuration files, and environment variables. Then these images run in containers, that are isolated processes that run on a shared operating system. Additionally, by using Docker Compose, I let the multiple containers communicate with one another.

In this project I will build a multi-container WordPress installation. My containers will include a MySQL database, an Nginx web server, and WordPress itself. I have also secured my installation by obtaining TLS/SSL certificates with Let’s Encrypt for the domain associated with my Wordpress site.

<img width="833" alt="Screenshot 2022-11-23 at 18 07 03" src="https://user-images.githubusercontent.com/85942176/203607448-5ced4e59-570c-452d-9936-0c026f84d4e3.png">

## MAIN APPROACH

<img width="314" alt="Screenshot 2022-11-23 at 18 14 28" src="https://user-images.githubusercontent.com/85942176/203608485-4dbcbadf-83ec-4a2f-804b-fcebf4c2dd49.png">


##USEFUL LINKS

https://thesecmaster.com/what-is-ssl-tls-how-ssl-tls-1-2-and-tls-1-3-differ-from-each-other/
https://kinsta.com/blog/wp-cli/
https://geekflare.com/php-fpm-optimization/
https://serverfault.com/questions/645755/differences-and-dis-advanages-between-fast-cgi-cgi-mod-php-suphp-php-fpm
https://docs.docker.com/storage/volumes/
https://www.simplilearn.com/tutorials/docker-tutorial/docker-networking 
