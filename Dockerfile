FROM ubuntu:20.04
RUN apt update -y && apt upgrade -y
RUN apt install sudo wget curl -y
RUN wget -q https://get.coollabs.io/coolify/install.sh -O install.sh && bash ./install.sh
