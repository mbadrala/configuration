--4 Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('norcalli/nvim-colorizer.lua')
    use "Hoffs/omnisharp-extended-lsp.nvim"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use { 'lewis6991/gitsigns.nvim' }
    use "craftzdog/solarized-osaka.nvim"
    use "slugbyte/lackluster.nvim"
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'doom',
                config = {
                    header = {
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                        '                                                  ',
                    },
                    center = {
                        {
                            icon = '  ',
                            -- icon_hl = 'Title',
                            desc = 'Find Git File           ',
                            -- desc_hl = 'String',
                            key = 'p',
                            keymap = 'Ctrl +',
                            key_hl = 'Number',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'lua print(2)'
                        },
                        {
                            icon = '  ',
                            desc = 'Find files',
                            key = 'f',
                            keymap = 'Leader + p +',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'lua print(3)'
                        },
                    },
                    footer = {} --your footer
                }
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
end)
