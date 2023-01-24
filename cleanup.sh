#/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
yes | docker image prune -a
yes | docker system prune -a
docker volume rm $(docker volume ls -q)  #Add the following after -q to skip volumes that should be saved | grep -wv nameOfVolumetoSkip)
