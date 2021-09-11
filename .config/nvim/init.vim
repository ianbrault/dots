" root config file
" Ian Brault <ian@brault.dev>

" styling
set showcmd
set nowrap
set number
set relativenumber
set ruler
set cursorline

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax on
  syntax enable

  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=light

  let g:one_allow_italics = 1
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

" keyboard-related settings
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

" load macOS config
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

" import plugin config and keymappings
runtime ./plug.vim
runtime ./maps.vim

