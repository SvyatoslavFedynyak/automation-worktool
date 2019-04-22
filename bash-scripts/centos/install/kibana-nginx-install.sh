#!/bin/bash

# Execute only under root or with sudo

wget https://artifacts.elastic.co/downloads/kibana/kibana-5.1.1-x86_64.rpm
rpm -ivh kibana-5.1.1-x86_64.rpm

# Conf /etc/kibana/kibana.yml
#server.port: 5601
#server.host: "localhost"
#elasticsearch.url: "http://localhost:9200"

# NGINX to enable kibana access though public ip
#yum install -y epel-release
#yum install -y nginx httpd-tools
#cd /etc/nginx
# Conf nginx
# delete server block

