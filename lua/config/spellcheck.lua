-- Thank you to reddit user DopeBoogie on reddit for this.

local spell_types = { "text", "plaintex", "typst", "markdown", "pandoc" }

vim.opt.spell = false

vim.api.nvim_create_augroup("Spellcheck", { clear = true })

vim.api.nvim_create_autocmd({ "FileType" }, {
    group = "Spellcheck",
    pattern = spell_types,
    callback = function()
        vim.opt_local.spell = true
    end,
    desc = "Enable spellcheck for defined filetypes."
})
