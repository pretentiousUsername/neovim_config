return {
    {
        "m4xshen/autoclose.nvim",
        config = {
            keys = {
                ["'"] = {
                    escape = true,
                    close = true,
                    pair = "''",
                    disabled_filetypes = { "markdown", "text", "pandoc" },
                    enabled_filetypes = { "python", "lua", "c", "c++" },
                },
                ["$"] = {
                    escape = true,
                    close = true,
                    pair = "$$",
                    enabled_filetypes = {"pandoc", "markdown", "latex" },
                },
            },
        }
    }
}
