#!/usr/bin/env bash

sudo apt install -y vim
mkdir -p $HOME/.vim/backup/
git clone --depth=1 https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim '+PluginInstall!' +qall

