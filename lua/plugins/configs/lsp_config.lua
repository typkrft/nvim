-- Format
--local on_attach = function(client, bufnr)
--  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>', {silent = true, noremap = true})
--end


-- Lua Language Config
-- Needed to Install with `brew install lua-language-server`
require'lspconfig'.sumneko_lua.setup {
  on_attach = On_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = '/opt/homebrew/bin/lua-language-server',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}


require'lspconfig'.denols.setup {
  on_attach = On_attach,
  flags = {
    debounce_text_changes = 150,
  },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
    'markdown',
  },
  init_options = {
    config = '/Users/brandon/.config/deno/deno.jsonc',
    lint = true,
  },
}

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

