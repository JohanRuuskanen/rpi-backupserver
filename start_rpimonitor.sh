#!/bin/bash

docker run \
    --device=/dev/vchiq \
    --device=/dev/vcsm \
    --volume=/opt/vc:/opt/vc \
    --volume=/boot:/boot \
    --volume=/sys:/dockerhost/sys:ro \
    --volume=/etc:/dockerhost/etc:ro \
    --volume=/proc:/dockerhost/proc:ro \
    --volume=/usr/lib:/dockerhost/usr/lib:ro \
    --restart=always \
    -p=8888:8888 --name="rpi-monitor" -d  \
    michaelmiklis/rpi-monitor:latest
