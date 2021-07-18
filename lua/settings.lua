--basic setting for indentation relative numbers and tabs
--This part does hybrid numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.ruler = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.writebackup = false 
vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.cursorline = true

--Theme
vim.g.onedark_style = 'dark'
require('onedark').setup()
vim.cmd 'set termguicolors'
