#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

sudo apt install -y vim htop
sudo apt install -y wget curl git
sudo apt install -y build-essential g++ make cmake gdb
sudo apt install -y autoconf autogen automake pkg-config

# Tmux/Screen
sudo apt install -y tmux screen 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# Terminator/Quake
sudo apt install -y terminator guake
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"

# Python
sudo apt install python3 python3-pip python3-dev
sudo pip3 install requests

# Improved search
sudo apt install -y ripgrep ack-grep silversearcher-ag

# Improved diff
sudo mkdir /opt/diff-so-fancy
sudo chown $USER:$GROUP /opt/diff-so-fancy
git clone https://github.com/so-fancy/diff-so-fancy.git /opt/diff-so-fancy

# Cleanup
rm ~/{.emacs,examples.desktop}
