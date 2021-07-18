--basic setting for indentation relative numbers and tabs
--This part does hybrid numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

--Theme
vim.g.onedark_style = 'dark'
require('onedark').setup()
vim.cmd 'set termguicolors'
