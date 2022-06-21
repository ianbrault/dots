-- lspsaga.rc.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>

if not vim.fn.exists('g:loaded_lspsaga') then
    vim.fn.finish()
end

local saga = require('lspsaga')

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
}

vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "D", "<Cmd>Lspsaga hover_doc<CR>")
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>")
vim.keymap.set("n", "gh", "<Cmd>Lspsaga lsp_finder<CR>")
