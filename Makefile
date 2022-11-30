# create volumes and run docker network
all:
	sudo mkdir -p /home/rrajaobe/data/mariadb
	sudo mkdir -p /home/rrajaobe/data/wordpress
	sudo docker-compose -f ./srcs/docker-compose.yml up -d 

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

# delete volumes from local storage
fclean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf /home/rrajaobe/data

re: fclean all

# run containers independently
nginx:
	sudo docker-compose -f ./srcs/docker-compose.yml build nginx

wordpress:
	sudo docker-compose -f ./srcs/docker-compose.yml build wordpress

mariadb:
	sudo docker-compose -f ./srcs/docker-compose.yml build mariadb

# delete all containers and images
delete:
	sudo docker container prune -f
	sudo docker rmi $$(sudo docker images -q)

# show images and containers
show:
	sudo docker container ls -a
	sudo docker image ls -a


# enter containers
itwp:
	sudo docker exec -it wordpress bash

itdb:
	sudo docker exec -it mariadb bash

itngx:
	sudo docker exec -it nginx bash

# prune with volumes
prune:
	docker system prune -a -f --volumes
