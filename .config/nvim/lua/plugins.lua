-- plugins.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>

-- Python is required for vim-autoformat
vim.g.python3_host_prog = "/usr/local/bin/python3"

-- configure rustfmt for vim-autoformat
vim.g.formatdef_rustfmt = '"rustfmt"'
vim.g.formatters_rust = {'rustfmt'}

-- automatically run :PackerCompile whenever this file is updated
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]]

-- install plugins using packer
return require('packer').startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- language server
    use {
        'neovim/nvim-lspconfig',
        opt = true,
        event = 'BufReadPre',
        wants = { 'nvim-lsp-installer' },
        config = function()
            require('config.lsp').setup()
        end,
        requires = {
            'williamboman/nvim-lsp-installer',
        },
    }

    -- better LSP UI
    use 'glepnir/lspsaga.nvim'

    -- completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    -- snippet engine
    use 'hrsh7th/vim-vsnip'

    -- telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- auto-format
    use 'Chiel92/vim-autoformat'

    -- tree-sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run =':TSUpdate'
    }

    -- status line
    use 'hoob3rt/lualine.nvim'

    -- file icons
    use 'kyazdani42/nvim-web-devicons'
end)

