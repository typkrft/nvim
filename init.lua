require('options')
require('autocommands')
require('plugins/plugins')
require('plugins/configs/lsp_installer') -- Needs To be sourced Prior to lsp_config
require('plugins/configs/lsp_config')
require('plugins/configs/cmp')
require('plugins/configs/luasnip')
require('plugins/configs/autopairs')
require('plugins/configs/gitsigns')
require('highlights')
require('keymaps') -- Map Last so that everything Is mapped the way I expect it to be
