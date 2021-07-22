require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
	ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
	enable_check_bracket_line = false

})

require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true,-- it will auto insert `(` after select function or method item
  check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})
