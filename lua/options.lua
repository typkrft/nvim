-- Use <Space> for a leader key
vim.g.mapleader = ' '

-- Treesitter / Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false

-- Column Width
-- vim.opt.colorcolumn = '80'
-- vim.opt.columns = 83

-- Spelling
vim.opt.spell = true


-- Wrapping
-- TODO: Werid Dark Line Before Break Char
vim.opt.breakindent = true
vim.opt.breakindentopt = 'shift:2,min:40,sbr'
vim.opt.linebreak = true
vim.opt.showbreak = '      ⮑  '
-- Move left/right to next/prev line
vim.opt.whichwrap = vim.opt.whichwrap + '<,>,[,]'

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

-- Completions / NVIM-cmp
vim.opt.completeopt = 'menu,menuone,noselect'

-- Set 24bit Colors
vim.opt.termguicolors = true

-- Don't Show -- INSERT -- et al.
vim.opt.showmode = false

-- Highlight Cursor Line
vim.opt.cursorline = true

-- Keep x lines at the top/bottom when scrolling
vim.opt.scrolloff = 10

-- Persistent Undo
vim.opt.undofile = true

-- Number Column Width
vim.opt.numberwidth = 2

-- Faster Completions
vim.opt.updatetime = 300

-- Split to the right or below
-- vim.opt.splitright = true Seems to mess with Packer Overlay being in center
vim.opt.splitbelow = true

-- Turn on Smart Case
vim.opt.smartcase = true

-- Ignore Case in Search
vim.opt.ignorecase = true
