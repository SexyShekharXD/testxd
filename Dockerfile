FROM ubuntu:20.04
RUN apt update -y && apt upgrade -y
RUN apt install snapd openssh-server -y
RUN systemctl status ssh
RUN snap install ngrok
RUN ngrok authtoken 25E3EtvZ54vaICQYzIsyjYsCs9x_4GJsabvzVhyGRdLHc4CXW
RUN ngrok tcp 22
