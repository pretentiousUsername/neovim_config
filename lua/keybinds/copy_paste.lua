-- Copy text. I can already paste easily in alacritty. Add a paste command to
-- your taste.
-- vim.api.nvim_set_option("clipboard", "xclip")
vim.o.clipboard = "unnamedplus"
vim.keymap.set("v", "<C-c>", "\"+y")
vim.keymap.set("n", "<C-p>", "\"+p")
