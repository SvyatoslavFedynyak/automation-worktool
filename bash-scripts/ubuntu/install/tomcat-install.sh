#!/bin/bash

# Use under root or with sudo

apt-get update
apt-get install -y default-jdk
wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz -P /tmp
tar xf /tmp/apache-tomcat-9*.tar.gz -C /opt/tomcat
ln -s /opt/tomcat/apache-tomcat-9.0.14 /opt/tomcat/latest
sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

