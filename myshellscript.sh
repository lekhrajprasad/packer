#!/bin/bash

#Perform a quick update on your instance:
yum update -y

yum install java-1.8.0-openjdk-devel -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins* -y
yum-config-manager --disable jenkins
systemctl enable jenkins
systemctl restart jenkins

#Install git in your EC2 instance
yum install git -y
yum-config-manager --disable git
