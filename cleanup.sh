#/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
yes | docker image prune -a
yes | docker system prune -a
docker volume rm $(docker volume ls -q)  #Add the following after -q to skip volumes that should be saved | grep -wv nameOfVolumetoSkip)
docker network rm $(docker network ls -q) #Only use if not cleaning up images by commenting out lines 4 and 5
