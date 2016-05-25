#!/bin/bash

# install nginx
sudo apt-get -y update
sudo apt-get -y install nginx

# move defaul conf file
sudo mv /home/ubuntu/default /etc/nginx/sites-available/default
sudo service nginx restart

# apply iptables rule
sudo iptables -t nat -A PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 8080
# to local test
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080