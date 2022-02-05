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

-- LSP
vim.api.nvim_set_keymap('n', '<space>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>', {silent = true, noremap = true})

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
On_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Surround / Select Text Ojb
--vim.api.nvim_set_keymap("nmap", '<space>i', [[ysiW"]], {silent = false, noremap = true})
vim.cmd([[nmap <space>" ysiW"]])
vim.cmd([[nmap <space>{ ysiW{]])
vim.cmd([[nmap <space>( ysiW(]])
vim.cmd([[nmap <space>' ysiW']])
vim.cmd([[nmap <space>[ ysiW[]])
-- Remove Surround Delim
vim.cmd([[nmap <space><space>" ds"]])
vim.cmd([[nmap <space><space>{ ds{]])
vim.cmd([[nmap <space><space>( ds(]])
vim.cmd([[nmap <space><space>' ds']])
vim.cmd([[nmap <space><space>[ ds[]])

-- Comments
vim.cmd([[nmap <leader>/ gcc]])
vim.cmd([[vmap <leader>/ gc]])
-- vim.api.nvim_set_keymap("n", "<leader>/", "gcc", {noremap = true})

-- Kitty Keymaps
-- cmd + / = Comment
vim.cmd([[nmap ⻧ gcc]])
vim.cmd([[imap ⻧ <esc>gcci]])
vim.cmd([[vmap 펒 gc]])

-- cmd + right = eol
vim.api.nvim_set_keymap('n', '⻯', '$', opts)
vim.api.nvim_set_keymap('v', '⻯', '$', opts)
vim.api.nvim_set_keymap('i', '⻯', '<esc>$a', opts)
vim.cmd([[cmap ⻯ <c-e>]])
--
-- cmd + left = bol
vim.api.nvim_set_keymap('n', '펒2', '0', opts)
vim.api.nvim_set_keymap('v', '펒2', '0', opts)
vim.api.nvim_set_keymap('i', '펒2', '<esc>0i', opts)
vim.cmd([[cmap 펒2 <c-b>]])

-- cmd + up = Top of Buffer
-- NOTE: Maybe add begginning of line 0
vim.api.nvim_set_keymap('n', '펒3', 'gg', opts)
vim.api.nvim_set_keymap('v', '펒3', 'gg', opts)
vim.api.nvim_set_keymap('i', '펒3', '<esc>ggi', opts)

-- cmd + down = Bottom of Buffer
vim.api.nvim_set_keymap('n', '펒4', 'G', opts)
vim.api.nvim_set_keymap('v', '펒4', 'G', opts)
vim.api.nvim_set_keymap('i', '펒4', '<esc>Gi', opts)

-- cmd + right = end of word
vim.api.nvim_set_keymap('n', '펒13', 'e', opts)
vim.api.nvim_set_keymap('v', '펒13', 'e', opts)
vim.api.nvim_set_keymap('i', '펒13', '<esc>ea', opts)

-- cmd + left = begginning of word
vim.api.nvim_set_keymap('n', '펒6', 'b', opts)
vim.api.nvim_set_keymap('v', '펒6', 'b', opts)
vim.api.nvim_set_keymap('i', '펒6', '<esc>bi', opts)

vim.api.nvim_set_keymap('n', '펒7', 'ggVG', opts)
vim.api.nvim_set_keymap('n', '펒8', 'u', opts)
vim.api.nvim_set_keymap('n', '펒9', '<c-r>', opts)
vim.api.nvim_set_keymap('n', '펒10', 'd0', opts)
vim.api.nvim_set_keymap('n', '펒11', 'dvb', opts)
