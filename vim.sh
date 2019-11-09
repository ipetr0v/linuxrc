#!/usr/bin/env bash

sudo apt install -y vim
mkdir -p ~/.vim/backup/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim '+PluginInstall!' +qall

