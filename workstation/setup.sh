#!/bin/sh
curl http://cloudinit.lightjack.lan/grml/setup.sh | sh
apt install git gh dotnet-sdk-8.0 vim neovim make doxygen build-essential -y
