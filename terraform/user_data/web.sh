#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
sudo yum install git -y
sudo git clone https://github.com/DanielRDias/awswww.git /var/www/html/
