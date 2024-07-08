-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
-- vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })

local lackluster = require("lackluster")

local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9

-- !must called setup() before setting the colorscheme!
lackluster.setup({
    -- You can overwrite the following syntax colors by setting them to one of...
    --   1) a hexcode like "#a1b2c3" for a custom color
    --   2) "default" or nil will just use whatever lackluster's default is.
    tweak_syntax = {
        string = "default",
        -- string = "#a1b2c3", -- custom hexcode
        -- string = color.green, -- lackluster color
        string_escape = "default",
        comment = "#759440",
        builtin = "default", -- builtin modules and functions
        type = "default",
        keyword = "#e6e6e6",
        keyword_return = "default",
        keyword_exception = "default",
    },
    -- You can overwrite the following background colors by setting them to one of...
    --   1) a hexcode like "#a1b2c3" for a custom color
    --   2) "none" for transparency
    --   3) "default" or nil will just use whatever lackluster's default is.
    tweak_background = {
        normal = 'default', -- main background
        -- normal = 'none',    -- transparent
        -- normal = '#a1b2c3',    -- hexcode
        -- normal = color.green,    -- lackluster color
        telescope = 'default', -- telescope
        menu = 'default',      -- nvim_cmp, wildmenu ... (bad idea to transparent)
        popup = 'default',     -- lazy, mason, whichkey ... (bad idea to transparent)
    },
})

-- !must set colorscheme after calling setup()!
vim.cmd.colorscheme("lackluster")

vim.cmd.colorscheme("lackluster-hack")
