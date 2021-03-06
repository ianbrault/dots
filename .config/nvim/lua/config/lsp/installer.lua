-- installer.lua
--
-- created 20 June 2022
-- Ian Brault <ian@brault.dev>
-- source: https://alpha2phi.medium.com/neovim-for-beginners-lsp-part-1-b3a17ddbe611

local lsp_installer_servers = require "nvim-lsp-installer.servers"

local M = {}

function M.setup(servers, options)
    for server_name, _ in pairs(servers) do
        local server_available, server = lsp_installer_servers.get_server(server_name)

        if server_available then
            server:on_ready(function()
                local opts = vim.tbl_deep_extend("force", options, servers[server.name] or {})
                server:setup(opts)
            end)

            if not server:is_installed() then
                vim.notify("Installing " .. server.name, vim.log.levels.INFO, { title = "INFO" })
                server:install()
            end
        else
            vim.notify(server, vim.log.levels.ERROR, { title = "ERROR" })
        end
    end
end

return M

