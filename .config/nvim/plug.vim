" vim-plug configuration
" Ian Brault <ian@brault.dev>

if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" Python is required for vim-autoformat
let g:python3_host_prog = "/usr/local/bin/python3"

call plug#begin()

" language server
Plug 'neovim/nvim-lspconfig'

" better LSP UI
Plug 'glepnir/lspsaga.nvim'

" completion framework
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" snippet engine
Plug 'hrsh7th/vim-vsnip'

" rust-analyzer
Plug 'simrat39/rust-tools.nvim'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" auto-format
Plug 'Chiel92/vim-autoformat'

" tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" file icons
Plug 'kyazdani42/nvim-web-devicons'

" status line
Plug 'hoob3rt/lualine.nvim'

call plug#end()

" configure rustfmt for vim-autoformat
let g:formatdef_rustfmt = '"rustfmt"'
let g:formatters_rust = ['rustfmt']

