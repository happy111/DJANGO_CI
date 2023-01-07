#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-enabled/app
chmod 710 /var/lib/jenkins/workspace/Django_ci

sudo ln -s /etc/nginx/sites-enabled/app /etc/nginx/sites-available
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx