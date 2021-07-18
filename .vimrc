""" .vimrc
""" author: Ian Brault <ian@brault.dev>

""" visual

syntax on

set showcmd	" show incomplete commands
set nowrap	" disable soft wrap
set number
set relativenumber
set ruler

""" keyboard

set ttyfast
set ttimeout
set ttimeoutlen=50

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set backspace=indent,eol,start

""" search

set incsearch
set hlsearch
set ignorecase
set smartcase

""" keybindings

let mapleader="\<Space>"

nnoremap H ^
nnoremap L $
nnoremap J 12j
nnoremap K 12k
nnoremap M J
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

vnoremap H ^
vnoremap L $
vnoremap J 12j
vnoremap K 12k

