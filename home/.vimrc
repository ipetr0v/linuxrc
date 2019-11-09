" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Init plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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

" User configuration
syntax on

set number
set autoindent
set tabstop=4
set shiftwidth=2
set expandtab
set exrc
set secure
set linebreak
set hlsearch
set incsearch
set ignorecase
set smartcase

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

set wildmode=longest:list
set completeopt=longest

" Change tabs to spaces & Remove unwanted whitespaces & Save file
:nnoremap <silent> <F5> :retab <Bar> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <Bar> :w <CR>

set mouse=a

" Mappings
let mapleader = "\<space>"

noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>wq :wq<cr>
noremap <leader>x :x<cr>

" Clean highlighted text
noremap <leader>/ :noh<cr>

" Move
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

" Redefine join
noremap <leader>j J

" Tab switching
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Tab handling
noremap <leader>tt :tabnew
noremap <leader>tn :tabnext
noremap <leader>tp :tabprev
noremap <leader>to :tabo

