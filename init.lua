require ('plugins')
require ('keymaps')
require ('settings')
require ('nv-compe')
require ('language-servers')
require ('plugins-config')

--lualine requires
require('lualine').setup ({
  options = {
    theme = 'github',
    -- For round icons (require Nerd-Font)
    -- section_separators = {"", ""},
    -- component_separators = {"", ""},
    -- ... your lualine config
  }
})

--Github theme for neovim
require("github-theme").setup({
  functionStyle = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"}
})

-- Add nvim-autopairs 
require('nvim-autopairs').setup()


