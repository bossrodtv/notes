#!/bin/bash

sudo -i <<EOF

# Update package list
apt update

# Install nginx
apt install -y nginx

# Enable firewall and allow ssh & nginx
ufw --force enable
ufw allow ssh
ufw allow 'Nginx Full'

# Check firewall status
ufw status

# Restart nginx
systemctl restart nginx

# Update the nginx default configuration
bash -c 'cat << "EOT" > /etc/nginx/sites-available/default
server {
  listen 80;
  listen [::]:80;

  server_name localhost;

  location / {
    proxy_pass "http://localhost:8000/";
    proxy_http_version 1.1; 
    proxy_set_header Upgrade \$http_upgrade; # forward the Upgrade header
    proxy_set_header Connection "upgrade"; # forward the Connection header
    proxy_set_header Host \$host; # forward the Host header
    proxy_cache_bypass \$http_upgrade;
  }
}
EOT'

# Test the configuration
nginx -t

# Restart nginx configuration
systemctl restart nginx

# Install certbot and the nginx plugin
apt install -y certbot python3-certbot-nginx

EOF
