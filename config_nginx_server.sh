#! /bin/bash
cat <<EOF> /etc/nginx/sites-available/orienta_web
server{
listen 80;
listen [::]:80;
root /var/www/orienta_web;
index index.html
server_name orienta-webserver;
location / {
try_files $uri $uri/ =404;
}
}
EOF
