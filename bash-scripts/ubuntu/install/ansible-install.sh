#!/bin/bash 

# Use under root or with sudo

apt-get update
apt-get install -y software-properties-common 
apt-add-repository ppa:ansible/ansible
apt-get update
sudo apt-get install -y ansible

