#!/usr/bin/env bash

mkdir -p $HOME/.local/bin

sudo apt update
sudo apt upgrade

sudo apt install -y vim awk htop
sudo apt install -y wget curl git

# C++
sudo apt install -y build-essential g++ make cmake gdb
sudo apt install -y autoconf autogen automake pkg-config

# Python
sudo apt install python3 python3-pip python3-dev
sudo pip3 install requests

# Improved search
sudo apt install -y ripgrep ack-grep silversearcher-ag

# Cleanup
rm ~/{.emacs,examples.desktop}
