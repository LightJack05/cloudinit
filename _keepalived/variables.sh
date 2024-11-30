#!/bin/sh
# MASTER or BACKUP
STATE="BACKUP"
# Virtual Router ID (unique identifier per VRRP network)
VRID="51"
# Priority of the Node (255 on master, lower on other nodes.)
PRIORITY="254"
# Virtual IP address to share
VIP="0.0.0.0\/0"
# Secret for the cluster
SECRET=""
