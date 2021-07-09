cat <<EOF > /etc/systemd/system/jmeter-server.service
# Systemd unit file for Apache JMeter Server
[Unit]
Description=Apache JMeter Server
After=syslog.target network.target

[Service]
Type=forking

Environment=JMETER_HOME=$JMETER_HOME
Environment=CATALINA_PID=$JMETER_HOME/bin/jmeter.pid

export SERVER_IP=$(curl http://checkip.amazonaws.com)
echo $SERVER_IP

ExecStart=/opt/jmeter/apache-jmeter-5.4.1/bin/jmeter-server -Djava.rmi.server.hostname=$SERVER_IP -Dserver_port=4000
ExecStop=/bin/kill -15 $JMETER_HOME/bin/jmeter.pid

User=ec2-user
Group=ec2-user
UMask=0007
RestartSec=60
Restart=always

[Install]
WantedBy=multi-user.target
EOF
