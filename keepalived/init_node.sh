# Keepalived configuration
. ./variables.sh

sed -i "s/{{KEEPALIVED_STATE}}/$KEEPALIVED_STATE/" /etc/keepalived/keepalived.conf
sed -i "s/{{KEEPALIVED_VRID}}/$KEEPALIVED_VRID/" /etc/keepalived/keepalived.conf
sed -i "s/{{KEEPALIVED_PRIORITY}}/$KEEPALIVED_PRIORITY/" /etc/keepalived/keepalived.conf
sed -i "s/{{KEEPALIVED_VIP}}/$KEEPALIVED_VIP/" /etc/keepalived/keepalived.conf
sed -i "s/{{KEEPALIVED_SECRET}}/$KEEPALIVED_SECRET/" /etc/keepalived/keepalived.conf

systemctl restart keepalived
