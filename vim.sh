#!/usr/bin/env bash

sudo apt install -y vim
mkdir -p ~/.vim/backup/
git clone --depth=1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim '+PluginInstall!' +qall

