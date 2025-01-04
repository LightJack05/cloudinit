# Keepalived Variables
# MASTER or BACKUP
KEEPALIVED_STATE="BACKUP"
# Virtual Router ID (unique identifier per VRRP network)
KEEPALIVED_VRID="51"
# Priority of the Node (255 on master, lower on other nodes.)
KEEPALIVED_PRIORITY="254"
# Virtual IP address to share
KEEPALIVED_VIP="0.0.0.0\/0"
# Secret for the cluster
KEEPALIVED_SECRET=""
