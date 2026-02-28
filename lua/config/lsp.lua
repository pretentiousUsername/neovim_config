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
}



-- enable the LSPs
-- vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
