#!/bin/bash
IP=192.168.1.110
docker run -d -p 4443:4443 -p 443:443 -p 80:80 \
    -v ncdata:/data \
    --restart always \
    --name nextcloudpi \
    ownyourbits/nextcloudpi-armhf $IP
