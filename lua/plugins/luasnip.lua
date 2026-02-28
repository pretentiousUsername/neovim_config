return {
    {
        'L3MON4D3/LuaSnip',
        version = 'v2.*',
        build = { "make install_jsregexp" },
    },
    {
        "rafamadriz/friendly-snippets",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/LuaSnip/" } })
        end,
    },
}
-- return {
--     {
-- 	    "L3MON4D3/LuaSnip",
-- 	    -- follow latest release.
-- 	    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
-- 	    -- install jsregexp (optional!).
-- 	    build = "make install_jsregexp",
--         lazy = false,
--     }
-- }
