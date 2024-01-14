require('telescope').setup{
    defaults = { 
        file_ignore_patterns = { 
            "%.meta" 
        }
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

vim.keymap.set('n', '<leader>pgs', builtin.git_status, {})
vim.keymap.set('n', '<leader>pgc', builtin.git_commits, {})
