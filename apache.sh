#!/bin/bash
yum update -y
yum install httpd  git  -y
systemctl start httpd
systemctl enable httpd
git clone https://github.com/RahulAher12/Sample-GitHub-Project-2026.git
cp -rvf  Sample-GitHub-Project-2026/*  /var/www/html/
