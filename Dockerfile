FROM debian:latest
RUN apt update -y && apt upgrade -y
RUN apt install sudo wget curl -y
RUN dockerd-rootless-setuptool.sh install
RUN wget -q https://get.coollabs.io/coolify/install.sh -O install.sh; sudo bash ./install.sh -f
