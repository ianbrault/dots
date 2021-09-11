" keymaps
" Ian Brault <ian@brault.dev> 

let mapleader="\<Space>"

" navigation
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $
nnoremap J 12j
vnoremap J 12j
nnoremap K 12k
vnoremap K 12k

" merge lines
nnoremap M J

" write/quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" auto-format
nmap <leader>f :Autoformat<CR>

