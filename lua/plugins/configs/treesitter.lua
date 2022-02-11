vim.cmd[[set foldexpr=nvim_treesitter#foldexpr()]]
vim.cmd[[set foldmethod=expr]]

local treesitter = require('nvim-treesitter')
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true
  },
  additional_vim_regex_highlighting = false,
}

