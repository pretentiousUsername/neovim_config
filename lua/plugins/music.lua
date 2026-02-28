return {
    { -- scnvim frontend
        'davidgranstrom/scnvim',
        ft = 'supercollider',
        dependencies = {
            { 'madskjeldgaard/fzf-sc', lazy = true },
        },

        config = function()
            local scnvim = require 'scnvim'
            local map = scnvim.map
            local map_expr = scnvim.map_expr
            scnvim.setup({
                keymaps = {
                    ['<M-e>'] = map('editor.send_line', {'i', 'n'}),
                    ['<C-e>'] = {
                        map('editor.send_block', {'i', 'n'}),
                        map('editor.send_selection', 'x'),
                    },
                    ['<CR>'] = map('postwin.toggle'),
                    ['<M-CR>'] = map('postwin.toggle', 'i'),
                    ['<M-L>'] = map('postwin.clear', {'n', 'i'}),
                    ['<C-k>'] = map('signature.show', {'n', 'i'}),
                    ['<F12>'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
                    ['<leader>st'] = map('sclang.start'),
                    ['<leader>sk'] = map('sclang.recompile'),
                    ['<F1>'] = map_expr('s.boot'),
                    ['<F2>'] = map_expr('s.mkter'),
                    ['<M-.'] = map_expr([[CmdPeriod.run]]),--map_expr('CmdPeriod.run'),
                    ['<M-h>'] = map_expr([[HelpBrowser.new()]]),
                },
                
                editor = {
                    highlight = {
                        color = 'IncSearch',
                    },
                },
                postwin = {
                    float = {
                        enabled = false, -- floating postwin is annoying as shit.
                    },
                },
                
                snippet = {
                    engine = {
                        name = 'luasnip',
                    },
                },
                
                documentation = {
                    --cmd = '/opt/homebrew/bin/pandoc',
                    cmd = 'pandoc',
                },

                scnvim.load_extension('fzf-sc')
            })
        end
    }
}
