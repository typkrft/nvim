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

  -- Themer
  -- https://github.com/themercorp/themer.lua
  use 'themercorp/themer.lua'

  -- Friendly Snippets
  -- https://github.com/rafamadriz/friendly-snippets
  use 'rafamadriz/friendly-snippets'

  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use 'nvim-treesitter/nvim-treesitter'


  -- Indent Guides
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  use "lukas-reineke/indent-blankline.nvim"

  vim.opt.list = true
  vim.opt.listchars:append("space: ")
  vim.opt.listchars:append("trail: ")
  -- vim.opt.listchars:append("eol:↴")

  vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

  require("indent_blankline").setup {
    -- space_char_blankline = " ",
    -- char_highlight_list = {
    --   -- "IndentBlanklineIndent1",
    --   "IndentBlanklineIndent2",
    --   "IndentBlanklineIndent3",
    --   "IndentBlanklineIndent4",
    --   "IndentBlanklineIndent5",
    --   "IndentBlanklineIndent6",
    -- },
    buftype_exclude = { "terminal" },
    filetype_exclude = { "dashboard" },
    show_current_context = true,
    show_current_context_start = true,
  }

  -- Git Signs
  -- https://github.com/lewis6991/gitsigns.nvim
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Twilight - Dims Code outside Block
  -- https://github.com/folke/twilight.nvim
  use 'folke/twilight.nvim'

  -- Zen mode
  -- https://github.com/folke/zen-mode.nvim
  use 'folke/zen-mode.nvim'

  -- EasyMotion
  -- https://github.com/easymotion/vim-easymotion
  use 'easymotion/vim-easymotion'

  -- NeoScroll
  -- https://github.com/karb94/neoscroll.nvim 
  use 'karb94/neoscroll.nvim'
  require('neoscroll').setup()

  -- Surround
  -- https://github.com/tpope/vim-surround
  use 'tpope/vim-surround'

  -- TODO Highlights
  -- https://github.com/folke/todo-comments.nvim
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Which Key
  -- https://github.com/folke/which-key.nvim
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  vim.g.mapleader = ' '

  -- Comments
  -- https://github.com/numToStr/Comment.nvim
  use 'numToStr/Comment.nvim'
  require('Comment').setup()

  -- LSP Installer
  -- https://github.com/williamboman/nvim-lsp-installer
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Completions
  -- TODO: Lots of Setup Needed
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  use 'f3fora/cmp-spell'
  vim.opt.spell = true
  vim.opt.spelllang = { 'en_us' }

  -- use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippets
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- Autopairs
  -- https://github.com/windwp/nvim-autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Rainbow Parentheses
  -- https://github.com/luochen1990/rainbow
  use 'luochen1990/rainbow'

  -- Wilder Menu
  use 'gelguy/wilder.nvim'
  use 'nixprime/cpsm'

  -- Dashboard
  -- https://github.com/glepnir/dashboard-nvim
  use 'glepnir/dashboard-nvim'
  vim.g.dashboard_default_executive = 'telescope'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

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

  -- Trouble - Diagnostic Information
  -- https://github.com/folke/trouble.nvim
  use 'folke/trouble.nvim'
  vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
    {silent = true, noremap = true}
  )
  vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
    {silent = true, noremap = true}
  )
  vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
    {silent = true, noremap = true}
  )
  vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
    {silent = true, noremap = true}
  )
  vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
    {silent = true, noremap = true}
  )
  vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
    {silent = true, noremap = true}
  )

  -- LSP Diagnostics - Gutter Informaiton
  -- https://github.com/glepnir/lspsaga.nvim
  --use 'glepnir/lspsaga.nvim'
  --require('lspsaga').init_lsp_saga()

local lsp_handlers = function()
   local function lspSymbol(name, icon)
      local hl = "DiagnosticSign" .. name
      vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
   end

   lspSymbol("Error", "")
   lspSymbol("Info", "")
   lspSymbol("Hint", "")
   lspSymbol("Warn", "")

   vim.diagnostic.config {
      virtual_text = {
         prefix = "",
      },
      signs = true,
      underline = true,
      update_in_insert = false,
   }

   vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "single",
   })
   vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = "single",
   })

   -- suppress error messages from lang servers
   vim.notify = function(msg, log_level)
      if msg:match "exit code" then
         return
      end
      if log_level == vim.log.levels.ERROR then
         vim.api.nvim_err_writeln(msg)
      else
         vim.api.nvim_echo({ { msg } }, true, {})
      end
   end
end

lsp_handlers()
  -- Windline
  -- https://github.com/windwp/windline.nvim
  -- TODO: Need To Do A lot of Setup
  -- TODO: Has Tabline Feature
  -- TODO: Set Theme
  -- TODO: Floating Status Line
  use 'windwp/windline.nvim'
  require('wlsample.airline')
  -- require('wlsample.airline_anim')
  -- require('wlsample.evil_line')

  -- Cokeline
  -- https://github.com/noib3/nvim-cokeline
  -- TODO: Probably needs a lot more configuring
  -- NOTE: Very Touchy
  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup({
        show_if_buffers_are_at_least = 2,
      })
    end
  })

  -- Automatically setup configuration
  if packer_bootstrap then
    require('packer').sync()
  end
end)

