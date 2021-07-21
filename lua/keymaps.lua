-- Disabling space to move forward
vim.api.nvim_set_keymap('n','<space>','<NOP>',{noremap = true, silent = true})

-- Making space mapleader
vim.g.mapleader = ' '

-- Making leader-H remove highlights 
vim.api.nvim_set_keymap('n', '<leader>H', ':set hlsearch!<CR>',{ noremap = true, silent = true})

-- making leader-e open Tree
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

--buferline cycle through
vim.api.nvim_set_keymap('n', '<C-h>', ':BufferLineCyclePrev<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':BufferLineCycleNext<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>3', '<C-^>',{noremap = true, silent = true})

--Toggle terminal
vim.api.nvim_set_keymap('n', '<C-t>', ':FloatermToggle<CR>',{noremap = true, silent = true})


--Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope git_status<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fw', ':Telescope current_buffer_fuzzy_find<CR>',{noremap = true, silent = true})

--Git
vim.api.nvim_set_keymap('n', '<leader>gs', ':vsp<CR>:Gina status<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Gina commit<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gp', ':Gina push<CR>',{noremap = true, silent = true})

local vimp = require 'vimp'
vimp.nmap('s', '<Plug>(easymotion-overwin-f2)')

--remap to run files

vimp.nnoremap('<C-c>',function()
--cpp
  if (vim.bo.filetype)=='cpp' then
    vim.api.nvim_command('!g++ -o  %:r.out %')
  end
end)

vimp.nnoremap('<F5>',function()

  --cpp
  if (vim.bo.filetype)=='cpp' then
    vim.api.nvim_command('!g++ -o  %:r.out %')
    vim.api.nvim_command('FloatermNew %:r.out')
  end

  --python
  if (vim.bo.filetype)=='python' then
    vim.api.nvim_command('FloatermNew python %:r.py')
  end

  --javascript
  if (vim.bo.filetype)=='javascript' then
    vim.api.nvim_command('FloatermNew node %:r.js')
  end

end)



