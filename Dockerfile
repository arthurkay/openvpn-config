FROM ubuntu:18.04

RUN mkdir -p /home/vpn-user && \
    mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun && \
    apt-get update -y && \
    apt-get install apt-utils -y && \
    apt-get install iproute2 -y && \
    apt-get install curl -y && \
    apt-get install wget -y && \
    apt-get install tar -y

WORKDIR /home/vpn-user/

COPY ./install.sh .

RUN chmod +x ./install.sh