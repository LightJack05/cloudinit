#!/bin/sh
. ./variables.sh

sed -i "s/{{STATE}}/$STATE/" /etc/keepalived/keepalived.conf
sed -i "s/{{VRID}}/$VRID/" /etc/keepalived/keepalived.conf
sed -i "s/{{PRIORITY}}/$PRIORITY/" /etc/keepalived/keepalived.conf
sed -i "s/{{VIP}}/$VIP/" /etc/keepalived/keepalived.conf
sed -i "s/{{SECRET}}/$SECRET/" /etc/keepalived/keepalived.conf

systemctl restart keepalived
