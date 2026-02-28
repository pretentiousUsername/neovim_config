return {
    {
        'saghen/blink.cmp',
        version = '1.*',
        -- `main` is untested, please open a PR if you've confirmed it works as expected
        -- dependencies = {
        --     {
        --         'L3MON4D3/LuaSnip',
        --         version = 'v2.*'
        --     },
        --     {
        --         "rafamadriz/friendly-snippets",
        --         config = function()
        --             require("luasnip.loaders.from_vscode").lazy_load()
        --             require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/LuaSnip/" } })
        --         end,
        --     },
        -- },
        opts = {
            snippets = { preset = 'luasnip' },
            -- ensure you have the `snippets` source (enabled by default)
            sources = {
                default = { 'lsp', 'path', 'snippets' },
                per_filetype = {
                    pandoc = {
                        name = "pandoc_references",
                        module = "cmp-pandoc-references.blink",
                    },
                },
            },
            keymap = {
                ['<C-b>'] = { "show", "show_documentation", "hide_documentation" },
                ['<C-e>'] = { "select_prev", "scroll_documentation_up" },
                ['<C-f>'] = { "select_next", "scroll_documentation_down" },
                ['<C-Space>'] = { "select_and_accept" },
                ['<S-Space>'] = { "hide" },
                -- ['<S-Tab>'] = {}, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            },
        }
    },
    -- {
    --     'saghen/blink.cmp',
    --     version = '1.*',
    --     -- `main` is untested, please open a PR if you've confirmed it works as expected
    --     dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    --     opts = {
    --         snippets = { preset = 'luasnip' },
    --         -- ensure you have the `snippets` source (enabled by default)
    --         sources = {
    --             default = { 'lsp', 'path', 'snippets', 'buffer' },
    --         },
    --     }
    -- },
    -- {
    --     "https://github.com/hrsh7th/cmp-nvim-lua",
    --     lazy = true,
    --     ft = "lua",
    -- },
    -- {
    --     'aspeddro/cmp-pandoc.nvim',
    --     dependencies = {
    --         'nvim-lua/plenary.nvim',
    --         'jbyuki/nabla.nvim' -- optional
    --     },
    --     ft = { "pandoc", "markdown", "rmd" },
    -- },
}
