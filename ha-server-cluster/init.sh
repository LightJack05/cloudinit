#!/bin/sh
curl http://cloudinit.lightjack.lan/_sys/base.sh | sh
curl http://cloudinit.lightjack.lan/_sys/init_init.sh | sh
curl http://cloudinit.lightjack.lan/ha-server-cluster/setup.sh | sh
curl http://cloudinit.lightjack.lan/keepalived/setup.sh | sh
curl http://cloudinit.lightjack.lan/ha-proxy/setup.sh | sh
