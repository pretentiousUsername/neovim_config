return {
    {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.10.0",
        lazy = false,
        -- event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        opts = {
            sync_install = true,  -- `sync_install` and `auto_install` make sure
            auto_install = true,  -- that the grammars in `ensure_installed` area
            highlight = {         -- installed.
                enable = true,
            },
            ensure_installed = {
                "python",
                "julia",
                "supercollider",
                "cpp",
                "c",
                "biblatex",
                "latex",
                "faust",
                "lua",
                "html",
                "css",
                -- "markdown",
            }
        }
    },
}
