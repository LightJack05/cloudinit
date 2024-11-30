#!/bin/sh
curl http://cloudinit.lightjack.lan/base.sh | sh
apt install nginx -y
systemctl start nginx --now
ufw allow 80
