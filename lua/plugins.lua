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
  use 'kabouzeid/nvim-lspinstall'

  --syntax highlight
  --use 'sheerun/vim-polyglot'

  --Tree sitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'
   

  --linting
  --use 'dense-analysis/ale'
  --Fomrating
  use 'prettier/vim-prettier'

  --snip engine
  use 'honza/vim-snippets'

  --atempt to make easier lsp install
  use 'williamboman/nvim-lsp-installer'

  --icons
  use 'kyazdani42/nvim-web-devicons'
  
  --NERDTree (currently using nvim-tree)
  --use 'preservim/nerdtree'

  --Adding and indent line
  use'Yggdroot/indentLine'

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
  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'navarasu/onedark.nvim'



  --auto pairs
  use 'jiangmiao/auto-pairs'

  --Dashboard
  use 'glepnir/dashboard-nvim'

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }


  --easy motions- beter move around
  use 'easymotion/vim-easymotion'

  --Git
  use 'tpope/vim-fugitive'


  --autosave
  use "Pocco81/AutoSave.nvim"



end)
