vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for fuzzy finding
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Treesitter for better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Utility plugins
    use 'mbbill/undotree'
    use 'norcalli/nvim-colorizer.lua'
    use 'HakonHarnes/img-clip.nvim'

    -- LSP and autocompletion
    use 'Hoffs/omnisharp-extended-lsp.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- Colorscheme
    use 'aliqyan-21/darkvoid.nvim'

    -- Custom plugins
    use '~/a/kaska'
    use '~/a/kizmet'

    -- Avante plugin for AI integration
    -- use {
    --     'yetone/avante.nvim',
    --     requires = {
    --         { "MunifTanjim/nui.nvim" },
    --         { "stevearc/dressing.nvim" },
    --         { "nvim-tree/nvim-web-devicons" }
    --     },
    --     config = function()
    --         require('avante').setup {
    --             provider = "claude",
    --             claude = {
    --                 endpoint = "https://api.anthropic.com",
    --                 model = "claude-3-5-sonnet-20240620",
    --                 temperature = 0,
    --                 max_tokens = 4096,
    --             },
    --             mappings = {
    --                 ask = "<leader>aa",
    --                 edit = "<leader>ae",
    --                 refresh = "<leader>ar",
    --                 diff = {
    --                     ours = "co",
    --                     theirs = "ct",
    --                     none = "c0",
    --                     both = "cb",
    --                     next = "]x",
    --                     prev = "[x",
    --                 },
    --                 jump = {
    --                     next = "]]",
    --                     prev = "[[",
    --                 },
    --                 submit = {
    --                     normal = "<CR>",
    --                     insert = "<C-s>",
    --                 },
    --                 toggle = {
    --                     debug = "<leader>ad",
    --                     hint = "<leader>ah",
    --                 },
    --             },
    --             hints = { enabled = true },
    --             windows = {
    --                 wrap = true,
    --                 width = 30,
    --                 sidebar_header = {
    --                     align = "center",
    --                     rounded = true,
    --                 },
    --             },
    --             highlights = {
    --                 diff = {
    --                     current = "DiffText",
    --                     incoming = "DiffAdd",
    --                 },
    --             },
    --             diff = {
    --                 debug = false,
    --                 autojump = true,
    --                 list_opener = "copen",
    --             },
    --         }
    --     end
    -- }
end)
