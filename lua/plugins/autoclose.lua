return {
    {
        "m4xshen/autoclose.nvim",
        config = {
            keys = {
                ["'"] = {
                    escape = true,
                    close = true,
                    pair = "''",
                    disabled_filetypes = { "markdown", "text", "pandoc" }
                },
                ["$"] = {
                    escape = true,
                    close = true,
                    pair = "$$",
                    ensabled_filetypes = {"pandoc", "markdown", "latex" }
                },
            },
        }
    }
}
