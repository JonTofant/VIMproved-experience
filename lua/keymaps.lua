-- Disabling space to move forward
vim.api.nvim_set_keymap('n','<space>','<NOP>',{noremap = true, silent = true})

-- Making space mapleader
vim.g.mapleader = ' '

-- Making leader-h remove highlights 
vim.api.nvim_set_keymap('n', '<leader>h', ':set hlsearch!<CR>',{ noremap = true, silent = true})

-- making leader-e Lexplore
vim.api.nvim_set_keymap('n', '<leader>e', ':NERDTreeToggle<CR>',{ noremap = true, silent = true})

-- Making window movement 
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h',{silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j',{silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k',{silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l',{silent = true})

-- Making better indentation
vim.api.nvim_set_keymap('v', '<', '<gv',{noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv',{noremap = true, silent = true})

--better way to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>',{noremap = true, silent = true})
