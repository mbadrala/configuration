function ColorMyPencils(color)
    vim.api.nvim_set_hl(0, "Statement",    { fg = "#17160B" })
    vim.api.nvim_set_hl(0, "Identifier",   { fg = "#17160B" })
    vim.api.nvim_set_hl(0, "Special",      { fg = "#17160B" })
    vim.api.nvim_set_hl(0, "Normal",       { bg = "#D4CFC7", fg = "#17160B" })
    vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr",       { bg = "#CEC5B9", fg = "#17160B" })
    vim.api.nvim_set_hl(0, "Visual",       { bg = "#84B2FF", fg = "#17160B" })
    vim.api.nvim_set_hl(0, "SignColumn",   { fg = "#17160B", bg = "#CEC5B9" })
    vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#CEC5B9"})
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#17160B", bg = "#817A60" })
    vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#17160B", bg = "#817A60" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#CEC5B9", fg = "#817A60" })
    vim.api.nvim_set_hl(0, "Comment",      { fg = "#267b53" })
    vim.api.nvim_set_hl(0, "String",       { fg = "#6e662b" })
    vim.api.nvim_set_hl(0, "Number",       { fg = "#7a4980" })
    vim.api.nvim_set_hl(0, "Float",        { fg = "#7a4980" })
    vim.api.nvim_set_hl(0, "Boolean",      { fg = "#7a4980" })
    vim.api.nvim_set_hl(0, "Type",         { fg = "#52524e" })
    vim.api.nvim_set_hl(0, "Include",      { fg = "#2e62b3" })
    vim.api.nvim_set_hl(0, "Define",       { fg = "#2e62b3" })
    vim.api.nvim_set_hl(0, "Structure",    { fg = "#227b51" })
    vim.api.nvim_set_hl(0, "Operator",     { fg = "#70706b" })
    vim.api.nvim_set_hl(0, "Constant",     { fg = "#17160B" })
    vim.api.nvim_set_hl(0, "Directory",    { fg = "#817A60" })
    vim.api.nvim_set_hl(0, "EndOfBuffer",  { })
    vim.api.nvim_set_hl(0, "ModeMsg",      { bg = "#EE502B" })
    vim.api.nvim_set_hl(0, "MatchParen",      { bg = "#EE502B" })
    vim.api.nvim_set_hl(0, "MoreMsg",      { fg = "#EE502B" })
    vim.api.nvim_set_hl(0, "SpecialKey",   { fg = "#EE502B" })
    vim.api.nvim_set_hl(0, "Question",     { fg = "#EE502B" })
    vim.api.nvim_set_hl(0, "PreProc",      { fg = "#EE502B" })
end

vim.o.termguicolors = true
ColorMyPencils()
