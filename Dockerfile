FROM ubuntu:20.04
RUN sudo apt update -y && sudo apt upgrade -y
RUN sudo apt install snapd openssh-server -y
RUN sudo systemctl status ssh
RUN sudo snap install ngrok
RUN ngrok authtoken 25E3EtvZ54vaICQYzIsyjYsCs9x_4GJsabvzVhyGRdLHc4CXW
RUN ngrok tcp 22
