#!/bin/bash

yum install -y java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
systemctl start jenkins
systemctl enable jenkins
firewall-cmd --zone=public --add-port=8080/tcp
firewall-cmd --runtime-to-permanent
