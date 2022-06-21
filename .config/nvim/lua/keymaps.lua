-- keymaps.lua
--
-- created 19 June 2022
-- Ian Brault <ian@brault.dev> 

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- navigation
vim.keymap.set("n", "H", "^")
vim.keymap.set("v", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("v", "L", "$")
vim.keymap.set("n", "J", "12j")
vim.keymap.set("v", "J", "12j")
vim.keymap.set("n", "K", "12k")
vim.keymap.set("v", "K", "12k")

-- window navigation
vim.keymap.set("n", "<Leader>gv", "<c-w><c-v>")
vim.keymap.set("n", "<Leader>gh", "<c-w>h")
vim.keymap.set("n", "<Leader>gl", "<c-w>l")

-- merge lines
vim.keymap.set("n", "M", "J")

-- write/quit
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>")

-- auto-format
vim.keymap.set("n", "<Leader>f", ":Autoformat<CR>")

