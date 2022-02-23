-- vim.opt.list = true
-- vim.opt.listchars:append("space: ")
-- vim.opt.listchars:append("trail: ")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
  buftype_exclude = { "terminal" },
  filetype_exclude = { "lsp-installer", "dashboard", "packer", "TelescopePrompt" },
  show_current_context = true,
  show_current_context_start = true,
}
