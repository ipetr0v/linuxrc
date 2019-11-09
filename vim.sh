#!/usr/bin/env bash

VUNDLE_CONFIG="
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

# Plugin manager
Plugin 'VundleVim/Vundle.vim'

# Motion
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'
Plugin 'easymotion/vim-easymotion'

# Code
Plugin 'valloric/youcompleteme'

# Languages
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on
"

MAPPINGS="

"

install_plugins () {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

}

install_mappings () {
    
}


install_plugins
