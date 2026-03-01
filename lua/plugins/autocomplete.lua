return {
    {
        'saghen/blink.cmp',
        version = '1.*',
        opts = {
            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 50,
                },
            },
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
}
