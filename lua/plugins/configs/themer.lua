local themer = require('themer')
themer.setup({
  colorscheme = "dracula",
  langs = {
    lua = true,
    python = true,
    javascript = true,
    md = true,
  },
  plugins = {
      treesitter = true,
      indentline = true,
      barbar = true,
      bufferline = true,
      cmp = true,
      gitsigns = true,
      lsp = true,
      telescope = true,
  },
  remaps = {
    highlights = {
      globals = {
        plugins = {
          treesitter = {
            TSBoolean = {fg = "#bd93f9", style = "bold,italic"},
            TSFuncBuiltin = {fg = "#50fa7b"},
            TSKeywordFunction = {fg = "#ff79c6", style = 'italic'},
            TSString = {fg = "#f1fa8c"},
            TSVariable = {fg = "#f8f8f2", style = "bold"},
            TSComment = {fg = "#6272a4", style = "italic"}
          }
        },
      }
    },
  },
  enable_installer = true
})

local telescope = require('telescope')
telescope.load_extension("themes")
