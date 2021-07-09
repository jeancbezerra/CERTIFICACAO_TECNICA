#!/bin/bash

sudo su
yum -y update
yum -y install wget vim unzip zip net-tools curl
yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

TZ=America/Sao_Paulo
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

echo "net.ipv6.conf.all.disable_ipv6=1" >> /etc/sysctl.conf

export JMETER_HOME=/opt/jmeter/apache-jmeter-5.4.1
echo $JMETER_HOME

export SERVER_IP=$(curl http://checkip.amazonaws.com)
echo $SERVER_IP

cd /opt/jmeter/apache-jmeter-5.4.1/ && chmod -R 777 * && chown -R ec2-user:ec2-user *

#sudo firewall-cmd --permanent --zone=public --add-port=0-65535/tcp
#sudo firewall-cmd --permanent --zone=public --add-port=0-65535/udp
#sudo firewall-cmd --reload
