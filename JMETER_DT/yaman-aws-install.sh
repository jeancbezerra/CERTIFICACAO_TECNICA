#!/bin/bash

sudo su
yum -y update
yum -y install wget vim unzip zip net-tools
yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

mkdir -p /opt/jmeter/ && cd /opt/jmeter/ && chmod -R 777 * && chown -R ec2-user:ec2-user * 
wget https://trendsoftware.com.br/downloads/apache/jmeter/apache-jmeter-5.4.1-server-config.zip
unzip apache-jmeter-5.4.1-server-config.zip
cd /opt/jmeter/ && chmod -R 777 * && chown -R ec2-user:ec2-user * && cd /opt/jmeter/apache-jmeter-5.4.1

export JMETER_HOME=/opt/jmeter/apache-jmeter-5.4.1
echo $JMETER_HOME

export SERVER_IP=`curl http://checkip.amazonaws.com`
echo $SERVER_IP

cd $JMETER_HOME/bin

./jmeter-server -Djava.rmi.server.hostname=$SERVER_IP -Dserver_port=4000 &

tail -n 1000 -f /opt/jmeter/apache-jmeter-5.4.1/bin/jmeter-server.log
