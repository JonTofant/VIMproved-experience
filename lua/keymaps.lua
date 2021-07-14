-- Disabling space to move forward
vim.api.nvim_set_keymap('n','<space>','<NOP>',{noremap = true, silent = true})

-- Making space mapleader
vim.g.mapleader = ' '

-- Making leader-H remove highlights 
vim.api.nvim_set_keymap('n', '<leader>H', ':set hlsearch!<CR>',{ noremap = true, silent = true})

-- making leader-e Lexplore
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>',{ noremap = true, silent = true})

-- Making window movement 
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h',{silent = true})
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j',{silent = true})
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k',{silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l',{silent = true})

-- Making better indentation
vim.api.nvim_set_keymap('v', '<', '<gv',{noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv',{noremap = true, silent = true})

--better way to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>',{noremap = true, silent = true})

--Toggle terminal
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerminal<CR>',{noremap = true, silent = true})

--buferline cycle through
vim.api.nvim_set_keymap('n', '<C-h>', ':BufferLineCyclePrev<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':BufferLineCycleNext<CR>',{noremap = true, silent = true})
