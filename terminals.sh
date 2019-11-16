#!/usr/bin/env bash

# Tmux/Screen
sudo apt install -y tmux screen 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# Terminator/Quake
sudo apt install -y terminator guake
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"

