vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader><leader>", ":noh<CR>")
vim.keymap.set("n", "<leader>p", "<cmd>PasteImage<cr>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('v', '<leader>1f', vim.lsp.buf.format, bufopts)

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>', { silent = true })
