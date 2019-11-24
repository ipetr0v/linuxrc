#!/usr/bin/env bash

sudo apt install -y zsh
mkdir -p $HOME/.zsh

# Plugin Manager
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh
#curl -sfL git.io/antibody | sh -s - -b $HOME/.local/bin

# Fonts
sudo apt install -y fonts-powerline

# Nerd fonts
# use "DroidSansMono Nerd Book Font" in terminals
# disable "Use the system fixed width font"
mkdir -p ~/.local/share/fonts
(
  cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf;
  fc-cache -fv
)

# TODO: try Meslo Nerd Font patched for Powerlevel10k

# Make ZSH a default SHELL
chsh -s $(which zsh)
