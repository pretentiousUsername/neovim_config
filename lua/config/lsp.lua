-- ripped from the documentation
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = {
        { ".luarc.json", ".luarc.jsonc" },
    },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            }
        }
    }
}



-- enable the LSPs
vim.lsp.enable("lua_ls")
