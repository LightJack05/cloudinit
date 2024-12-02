#!/bin/sh
apt install zsh -y
wget -O /etc/zsh/zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc

usermod --shell /usr/bin/zsh root
