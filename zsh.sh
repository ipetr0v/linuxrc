#!/usr/bin/env bash

sudo apt install -y zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Custom plugins
git clone --depth=1 https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/alias-tips
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/powerlevel10k

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
