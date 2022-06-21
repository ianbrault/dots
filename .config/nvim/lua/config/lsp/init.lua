-- init.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>
-- source: https://alpha2phi.medium.com/neovim-for-beginners-lsp-part-1-b3a17ddbe611

local M = {}

local servers = {
    bashls = {},
    cssls = {},
    clangd = {},
    html = {},
    jsonls = {},
    pyright = {},
    rust_analyzer = {},
    sumneko_lua = {},
    svelte = {},
    tsserver = {},
    vimls = {},
}

local function on_attach(client, bufnr)
    -- TODO: re-evaluate whether this is necessary
    -- enable completion triggered by <C-X><C-O>
    -- see `:help omnifunc` and `:help ins-completion` for more information
    -- vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- TODO: re-evaluate whether this is necessary
    -- use LSP as the handler for formatexpr
    -- see `:help formatexpr` for more information
    -- vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

    -- TODO: re-evaluate whether this is necessary
    -- configure key mappings
    -- require("config.lsp.keymaps").setup(client, bufnr)
end

local opts = {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
}

function M.setup()
    require("config.lsp.installer").setup(servers, opts)
end

return M

