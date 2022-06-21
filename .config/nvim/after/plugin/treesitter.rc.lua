-- treesitter.rc.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>

if not vim.fn.exists('g:loaded_nvim_treesitter') then
    vim.fm.finish()
end

require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "html",
        "javascript",
        "json",
        "python",
        "rust",
        "svelte",
        "vim",
    }
})

