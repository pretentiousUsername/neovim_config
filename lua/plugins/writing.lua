-- These are plugins that I use for writing, this includes a pandoc plugin,
-- a TeX plugin, and maybe some other stuff in the future.

return {
    {
        "https://github.com/vim-pandoc/vim-pandoc",
        ft = { "md", "markdown", "mdown", "mkd", "mkdn", "pandoc" },
        lazy = true,
        priority = 1000,
    },
    {
        "https://github.com/vim-pandoc/vim-pandoc-syntax",
        ft = { "md", "markdown", "mdown", "mkd", "mkdn", "pandoc" },
        lazy = true,
    },
    {
        "https://github.com/aspeddro/cmp-pandoc.nvim",
    },

    -- ft = { "md", "markdown", "mdown", "mkd", "mkdn", "pandoc" },
}
