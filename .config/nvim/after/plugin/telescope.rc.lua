-- telescope.rc.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>

vim.keymap.set("n", ";f", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", ";r", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "\\", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", ";;", "<Cmd>Telescope help_tags<CR>")

local actions = require('telescope.actions')
-- global remapping
require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    }
}

