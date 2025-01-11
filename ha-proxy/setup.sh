#!/bin/sh
# Install haproxy 
apt install haproxy -y

# Download required files
curl http://cloudinit.lightjack.lan/ha-proxy/config_template.cfg -o /etc/haproxy/haproxy.cfg 
curl http://cloudinit.lightjack.lan/ha-proxy/variables.sh >> /root/variables.sh
curl http://cloudinit.lightjack.lan/ha-proxy/init_node.sh >> /root/init_node.sh
