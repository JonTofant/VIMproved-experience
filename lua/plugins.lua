local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}

  --/**************/
  --/* BETTER LSP */
  --/**************/
  
  --lsp config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'


  --snip engine
  use 'hrsh7th/vim-vsnip'
  


  --NERDTree
  use 'preservim/nerdtree'

  --Terminal
  use 'akinsho/nvim-toggleterm.lua'

  --lualine.nvim
  use {
    'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
      }

  --theme
  use 'projekt0n/github-nvim-theme'

  --auto pairs
  use 'windwp/nvim-autopairs'
end)
