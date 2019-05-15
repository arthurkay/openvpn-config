#!/bin/bash

    echo "Hi there $(whoami),"
    read -p "Please enter the docker container you want to run: " container
    docker run --cap-add=NET_ADMIN --device=/dev/net/tun -it "$container" /bin/bash