#/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
yes | docker image prune -a
yes | docker system prune -a
docker network rm $(docker network ls -q)
docker volume rm $(docker volume ls -q | grep -wv rss-data | grep -wv traefik-ssl-certs | grep -wv wordpress-data | grep -wv wordpress-db | grep -wv portainer-data | grep -wv heimdall-data)
