#!/bin/sh
apt install nginx -y
systemctl start nginx --now
ufw allow 80
