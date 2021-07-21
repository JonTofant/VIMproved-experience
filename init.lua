require ('plugins')
require ('keymaps')
require ('settings')

--Plugins config
require ('plugins-config/bufferline')
require ('plugins-config/lualine')
require ('plugins-config/dashboard')
require ('plugins-config/treesitter')
require ('plugins-config/gruvbox')
require ('plugins-config/auto-save')
require ('plugins-config/formatter')
require ('plugins-config/indent-line')
--broken require ('plugins-config/lsp-install')
--Vim source
vim.cmd('source ~/appdata/local/nvim/coc-config.vim')

