#!/bin/sh
# Allow access to port 112 for VRRP
ufw allow in on eth0 from any to 224.0.0.18 comment "allow multicast for keepalived"
# Install keepalived
apt install keepalived -y

# Download required files
curl http://cloudinit.lightjack.lan/_keepalived/config_template.conf -o /etc/keepalived/keepalived.conf
curl http://cloudinit.lightjack.lan/_keepalived/variables.sh -o /root/variables.sh
curl http://cloudinit.lightjack.lan/_keepalived/init_node.sh -o /root/init_node.sh
chmod +x /root/*.sh


