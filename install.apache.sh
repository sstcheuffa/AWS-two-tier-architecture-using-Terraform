#! /bin/bash
yum update -y

yum install httpd -y
systemctl enable httpd
systemctl start httpd

echo "Hello World! from $(hostname -f)" > /var/www/html/index.html
