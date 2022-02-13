local tree = require('nvim-tree')
tree.setup({
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
  },
})
vim.g["nvim_tree_indent_markers"] = 1
