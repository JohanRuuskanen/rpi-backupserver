#!/bin/bash

docker run -d -p 9000:9000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    --restart=always \
    --name="portainer" \
    portainer/portainer

