-- Treesitter / Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false

-- Column Width
vim.opt.colorcolumn = '80'

-- Line Numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Mouse Integration
vim.opt.mouse = 'a'

-- Use System Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Tabs
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.shiftwidth = 2        -- shift 2 spaces when tab
vim.opt.tabstop = 2           -- 1 tab == 2 spaces
vim.opt.smartindent = true    -- autoindent new lines


