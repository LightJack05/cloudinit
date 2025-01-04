#!/bin/sh
curl http://cloudinit.lightjack.lan/_sys/base.sh | sh
curl http://cloudinit.lightjack.lan/_sys/init_init.sh | sh
curl http://cloudinit.lightjack.lan/keepalived/setup.sh | sh
