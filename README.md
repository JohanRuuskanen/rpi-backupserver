# rpi-backupserver info
Scripts for deploying a backup server on a raspberry pi using nextcloud on
docker, including monitoring software.

Install docker-engine for raspberry pi

    chmod +x get-docker.sh
    ./get-docker.sh

Set user in docker grouprights

    sudo groupadd docker
    sudo usermod -aG docker $USER

Test docker installation and grouping with

    docker run hello-world

Start the different containerized services

Nextcloud

    Start
    ./start_nextcloud.sh

    Connect
    https://localhost:443   For client side
    https://localhost:4443  For GUI options
    https://55p.ddns.net    For outside connection, only to client side. 
                            Todo: Fix better ddns service that updates 
                            more frequently.

RPI-monitor

    Start
    ./start_rpimonitor.sh

    Connect
    localhost:8888

Portainer
    
    Start
    ./start_portainer.sh

    Connect
    localhost:9000
