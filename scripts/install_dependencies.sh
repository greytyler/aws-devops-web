#!/bin/bash

set -e

echo "Installing dependencies..."

sudo yum install tomcat -y
if [ $? -ne 0 ]; then
  echo "Error installing Tomcat"
  exit 1
fi

sudo yum -y install httpd
if [ $? -ne 0 ]; then
  echo "Error installing HTTPD"
  exit 1
fi

sudo cat << EOF > /etc/httpd/conf.d/tomcat_manager.conf
<VirtualHost *:80>
  ServerAdmin root@localhost
  ServerName app.grey.com
  DefaultType text/html
  ProxyRequests off
  ProxyPreserveHost On
  ProxyPass / http://localhost:8080/aws-web-project/
  ProxyPassReverse / http://localhost:8080/aws-web-project/
</VirtualHost>
EOF

if [ $? -ne 0 ]; then
  echo "Error creating tomcat_manager.conf file"
  exit 1
fi

echo "Dependencies installed successfully"