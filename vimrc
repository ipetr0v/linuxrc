" Init plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Motion
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'
Plugin 'easymotion/vim-easymotion'

" Code
Plugin 'valloric/youcompleteme'

" Languages
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

set exrc
set secure
set linebreak

syntax on

set number
set autoindent
set tabstop=4
set shiftwidth=2
set expandtab

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

set wildmode=longest:list
set completeopt=longest

set hlsearch
set incsearch
set ignorecase
set smartcase

" Change tabs to spaces & Remove unwanted whitespaces & Save file
:nnoremap <silent> <F5> :retab <Bar> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <Bar> :w <CR>

""set mouse=a

" Mappings

