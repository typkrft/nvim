local tree = require('nvim-tree')
vim.g["nvim_tree_indent_markers"] = 1
tree.setup({
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
  },
})
