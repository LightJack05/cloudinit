#!/bin/sh
# Install keepalived
apt install keepalived -y

# Create the config
mkdir /etc/keepalived/

# Download required files
curl http://cloudinit.lightjack.lan/_keepalived/config_template.conf -o /etc/keepalived/keepalived.conf
curl http://cloudinit.lightjack.lan/_keepalived/variables.sh -o ~/variables.sh
curl http://cloudinit.lightjack.lan/_keepalived/init_node.sh -o ~/init_node.sh
chmod +x ~/*.sh


