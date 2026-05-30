-- Map the `mapleader` key---this was too small to include as its own separate
-- file.
vim.g.mapleader = "\\"

require "config.basic_config"
require "config.lazy"
require "config.spellcheck"
require "config.lsp"
require "config.cmp_pandoc"
require "keybinds.copy_paste"
require "keybinds.lazy"
require "keybinds.tree_open"
