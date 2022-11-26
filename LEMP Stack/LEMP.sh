#!/bin/bash
apt update
apt install nginx
apt install mysql-server
sudo systemctl start mysql.service


# PHP installation
apt install php-fpm php-mysql

# direct ngix to use php to dynamically handle content, open the block config to change the default
nano /etc/nginx/site-available/default



# Domain name registra (godaday)

#Install ssl certification (https://letsencrypt.org/)
certbot

add-apt-repository ppa:certbot/certbot
apt install python-certbot-nginx

# change the nginx block files
nano /etc/nginx/site-available/default
certbot --nginx -d domainname 1 -d domainname 2
certbit renew --dry-run