-- Move through Visual Lines
vim.api.nvim_set_keymap("n", "<Up>", [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk']], { expr = true })
vim.api.nvim_set_keymap("n", "<Down>", [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj']], { expr = true })

-- Tab Switches Buffer
vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>bn<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>bp<CR>", {silent = true, noremap = true})

-- Save File
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>w<CR>", {noremap = true})

-- Buffer Delete
vim.api.nvim_set_keymap("n", "<leader>bd", "<cmd>bd<CR>", {noremap = true})

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {silent = true, noremap = true})
