-- TODO: Move Configs to their own files
-- TODO: Look into order of plugins

-- Bootstrap Packer
-- run `nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'` to install
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- Packer
  -- https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'
  
  -- LSP Installer
  -- https://github.com/williamboman/nvim-lsp-installer
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Themer
  -- https://github.com/themercorp/themer.lua
  use({
    "themercorp/themer.lua",
    config = function()
    require("themer").setup({
      colorscheme = "dracula",
      styles = {
        comment = { style = 'italic' },
        ["function"] = { style = 'italic' },
        functionbuiltin = { style = 'italic' },
          variable = { style = 'italic' },
          variableBuiltIn = { style = 'italic' },
          parameter  = { style = 'italic' },
        },
        langs = {
          lua = true,
          python = true,
          javascript = true,
          md = true,
        },
        plugins = {
          treesitter = true,
        },
      })
    end
  })

  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
    require("nvim-treesitter.configs").setup({
      -- One of "all", "maintained" (parsers with maintainers), or a list of languages
      ensure_installed = "maintained",
      -- Install languages synchronously (only applied to `ensure_installed`)
      sync_install = false,
      -- List of parsers to ignore installing
      -- ignore_install = { "javascript" },
  
      highlight = {
        -- `false` will disable the whole extension
        enable = true,
  
        -- list of language that will be disabled
        -- disable = { "c", "rust" },
  
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
    })
  end
  })

  -- Cokeline
  -- https://github.com/noib3/nvim-cokeline
  -- TODO: Probably needs a lot more configuring
  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup({
        show_if_buffers_are_at_least = 2,
      })
    end
  })


  -- Devicons
  -- https://github.com/kyazdani42/nvim-web-devicons
  -- NOTE: Messes with Cokeline Tab Colors 
  use({
    "kyazdani42/nvim-web-devicons",
    config = function()
    require("nvim-web-devicons").setup({
    -- Config Here
    })
  end
  })

  -- Automatically setup configuration
  if packer_bootstrap then
    require('packer').sync()
  end
end)

