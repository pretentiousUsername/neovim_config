-- ripped from the documentation
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-lsp" },
    filetypes = { "lua" },
    -- root_markers = {
    --     { ".luarc.json", ".luarc.jsonc" },
    -- },
    -- settings = {
    --     Lua = {
    --         runtime = {
    --             version = "LuaJIT",
    --         }
    --     }
    -- }
}

vim.lsp.config["pyright"] = {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    settings = {
        pyright = {
            disableOrganizedImports = true,
        },
        python = {
            analysis = {
                ignore = { "*" },
            },
        },
    },
}

vim.lsp.config["ruff"] = {
    filetypes = { "python" },
    init_options = {
        settings = {
            showSyntaxErrors = true,
            logLevel = "debug",
        },
    },
}


vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    if client.name == 'ruff' then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
  end,
  desc = 'LSP: Disable hover capability from Ruff',
})



-- enable the LSPs
-- vim.lsp.enable("lua_ls")
-- vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
