vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.opt.undofile = true

vim.opt.wrap = true 
vim.opt.linebreak = true 

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.cul = true

vim.opt.scrolloff = 6
vim.opt.updatetime = 50

vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "astro", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
    end,
})

vim.api.nvim_set_keymap('n', '<leader>b', ':cclose<CR>', { noremap = true, silent = true })

