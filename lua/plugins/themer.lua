local themer = require('themer')
themer.setup({
colorscheme = "dracula",
styles = {
  comment = { style = 'italic' },
  ["function"] = { style = 'italic' },
  functionbuiltin = { style = 'italic' },
    variable = { style = 'italic' },
    variableBuiltIn = { style = 'italic' },
    parameter  = { style = 'italic' },
  },
  langs = {
    lua = true,
    python = true,
    javascript = true,
    md = true,
  },
  plugins = {
    treesitter = true,
  },

})
