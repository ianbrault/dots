-- init.lua
--
-- Ian Brault <ian@brault.dev>
-- modified 23 June 2022

-- styling
vim.opt.showcmd = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.cursorline = true

-- remove trailing whitespace on save
vim.cmd [[
    autocmd BufWritePre * :%s/\s\+$//e
]]

-- true color
if vim.fn.exists("&termguicolors") and vim.fn.exists("&winblend") then
    vim.cmd [[
        syntax on
        syntax enable
    ]]

    vim.opt.termguicolors = true
    vim.opt.winblend = 0
    vim.opt.wildoptions = "pum"
    vim.opt.pumblend = 5
    vim.opt.background = "light"

    vim.g.one_allow_italics = 1
    -- use NeoSolarized color scheme
    vim.g.neosolarized_termtrans = 1
    vim.cmd [[
        runtime ./colors/NeoSolarized.vim
        colorscheme NeoSolarized
    ]]
end

-- keyboard-related settings
vim.opt.ttyfast = true
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 50

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.backspace = "indent,eol,start"

-- load macOS config
if vim.fn.has("unix") then
    local uname = vim.fn.system("uname -s")
    -- do Mac stuff
    if uname == "Darwin\n" then
        require("macos")
    end
end

-- import plugin config and keymappings
require("keymaps")
require("plugins")

