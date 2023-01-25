#/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
yes | docker image prune -a
yes | docker system prune -a
docker volume rm $(docker volume ls -q)  #Add the following after -q to skip volumes that should be saved | grep -wv nameOrIdOfVolumetoSkip
docker network rm $(docker network ls -q) #Only use if not cleaning up networks by commenting out lines 4-5. Can add | grep -wv idOfNetworkToSkip
yes | docker image rm $(docker image ls -q) #Only use if not cleaning up images by commeting out lines 4-5. Can add | grep -wv idOfImageToSkip
