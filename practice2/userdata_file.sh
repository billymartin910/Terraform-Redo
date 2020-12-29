#!/bin/bash
yum install httpd -yum
yum install telnet -y 
sudo systemctl start httpd 
sudo systemctl enable httpd  