#!/bin/sh
# Install haproxy 
apt install haproxy -y

# Download required files
curl http://cloudinit.lightjack.lan/haproxy/config_template.conf -o /etc/haproxy/haproxy.cfg 
curl http://cloudinit.lightjack.lan/haproxy/variables.sh >> /root/variables.sh
curl http://cloudinit.lightjack.lan/haproxy/init_node.sh >> /root/init_node.sh
