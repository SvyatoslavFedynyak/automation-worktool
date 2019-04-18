#!/bin/bash

#Use only as root

apt-get install -y curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install -y docker-ce

#Next need to allow current user use docker but I don't have imagine how to give script his name while executing with sudo

