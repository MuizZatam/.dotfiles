-- mapleader
vim.g.mapleader = " "


-- window config
vim.o.winborder = "rounded"


-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true


-- Tabs, Spaces and Indent
vim.opt.expandtab = true        -- Insert spaces instead of tabs when pressing <Tab>
vim.opt.shiftwidth = 4          -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4             -- Number of spaces that a <Tab> character represents
vim.opt.smarttab = true         -- Use shiftwidth when inserting tabs at the beginning of a line
vim.opt.autoindent = true       -- Copy indent from the current line when starting a new line
vim.opt.softtabstop = 4         -- Number of spaces a <Tab> or <BS> counts for while performing editing operations


-- Mouse
vim.opt.mouse = "a"


-- Colorscheme
vim.cmd("colorscheme kanagawa")
