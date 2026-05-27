local function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

return {
    { -- config from https://github.com/folke/lazy.nvim/discussions/2026
      -- This is essentially for everything but writing.
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            -- pandoc
            "aspeddro/cmp-pandoc.nvim",
            -- For luasnip users.
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
        },
        opts = function()
            local tabmem = require("..utilities.table_membership")
            local function is_filetype(entry, ctx, filetype)
                local kind = vim.bo.filetype
                if kind == filetype then
                    return false
                end
            end
            -- Set up nvim-cmp.
            local cmp = require("cmp")
            return {
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                    end
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered()
                },
                mapping = cmp.mapping.preset.insert(
                    {
                        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                        ['<C-f>'] = cmp.mapping.scroll_docs(4),
                        ['<C-M-Space>'] = cmp.mapping.complete(),
                        ['<C-e>'] = cmp.mapping.abort(),
                        ['<C-Space>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    }
                ),
                sources = cmp.config.sources(
                    {
                        {name = "luasnip"}, -- For luasnip users.
                        {name = "nvim_lsp"},
                        { name = "cmp_pandoc" }
                    },
                    {
                        { -- not pretty, but it should work
                            name = "buffer",
                            entry_filter = function(entry, ctx) is_filetype(entry, ctx, "pandoc") end
                        },
                    }
                )
            }
        end,
    },
}
