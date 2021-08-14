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
  use 'mfussenegger/nvim-jdtls'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'prabirshrestha/vim-lsp'
  use 'mattn/vim-lsp-settings'


  --Language-client neovim
  --use 'neoclide/coc.nvim'

  --syntax highlight
  --use 'sheerun/vim-polyglot'

  --Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate'
  }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'
   

  --linting
  --use 'dense-analysis/ale'
  --Formating
  use 'lukas-reineke/format.nvim'
  

  --snip engine and snippets
	use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use "rafamadriz/friendly-snippets"


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
  use 'dracula/vim'
  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'navarasu/onedark.nvim'
  use 'rakr/vim-one'
  use 'xiyaowong/nvim-transparent'



  --auto pairs
  use 'windwp/nvim-autopairs'
  --Dashboard
  use 'glepnir/dashboard-nvim'

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {
    'liuchengxu/vim-clap',
  }


  --easy motions- beter move around
  use 'easymotion/vim-easymotion'

  --Git
  --use 'tpope/vim-fugitive'
  --use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'lambdalisue/gina.vim'


  --autosave
  use "Pocco81/AutoSave.nvim"

  --lua development
  use 'svermeulen/vimpeccable'



end)
