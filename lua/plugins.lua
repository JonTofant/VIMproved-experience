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
 -- use 'hrsh7th/nvim-compe'
  use 'mfussenegger/nvim-jdtls'

  --Language-client neovim
  use 'neoclide/coc.nvim'

  --syntax highlight
  use 'sheerun/vim-polyglot'
  --linting
  --use 'dense-analysis/ale'
  --Fomrating
  use 'prettier/vim-prettier'

  --snip engine
  use 'hrsh7th/vim-vsnip'

  --atempt to make easier lsp install
  use 'williamboman/nvim-lsp-installer'

  --Tree sitter
  use 'nvim-treesitter/nvim-treesitter'
   
  --icons
  use 'kyazdani42/nvim-web-devicons'
  
  --NERDTree
  --use 'preservim/nerdtree'

  --Nvim Tree
  use 'kyazdani42/nvim-tree.lua'

  --Terminal
  use 'voldikss/vim-floaterm'

  --lualine.nvim
  use {
    'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
      }

  --bufferline
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

  --theme
  use 'projekt0n/github-nvim-theme'
  use 'folke/tokyonight.nvim'
  use 'joshdick/onedark.vim'
  use 'dracula/vim'

  --auto pairs
  use 'jiangmiao/auto-pairs'

  --Dashboard
  use 'glepnir/dashboard-nvim'

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  --debuger
  use 'mfussenegger/nvim-dap'


end)
