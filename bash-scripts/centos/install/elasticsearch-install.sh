#!/bin/bash

# Use under root or with sudo 

yum install -y java-1.8.0-openjdk
yum install -y wget 
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.3.noarch.rpm
rpm -ivh elasticsearch-1.7.3.noarch.rpm
systemctl enable elasticsearch
# Change network.host in /etc/elaticsearch/elasticsearch.yml
systemctl start elasticsearch
if curl 'localhost:9200'
then 
echo Success
else 
echo Failure
