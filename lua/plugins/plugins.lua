-- TODO: Move Configs to their own files
-- TODO: Look into order of plugins
-- TODO: Packer should be floating

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

  -- NOTE: Theming
  -- Themer
  -- https://github.com/themercorp/themer.lua
  use {
    'themercorp/themer.lua',
    config = function ()
      require('plugins/configs/themer')
    end
  }

  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
      require('plugins/configs/treesitter')
    end
  }

  -- TODO: Highlights
  -- https://github.com/folke/todo-comments.nvim
  -- NOTE: Trailing Spaces in indent line config Breaks this
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({})
    end
  }

  -- Indent Guides
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require('plugins/configs/indent')
    end
  }

  -- Colorizer
  -- https://github.com/abosnjakovic/nvim-colorizer.lua
  use {
    'abosnjakovic/nvim-colorizer.lua',
    -- Lazy load on :ColorizerToggle, filetypes
    opt = true,
    cmd = {'ColorizerToggle'},
    ft = {"sh", "markdown", "json", "jsonc", "html", "javascript", "css"},
    config = function()
      require('colorizer').setup({
        -- Enable all CSS functionality when ft is css, js, and HTML
        css = { css = true; },
        html = { css = true; },
        js = { css = true; },
        -- Enable 0xAARRGGBB colors in shell files
        sh = { rgb_0x = true; },
        zsh = { rgb_0x = true; }
      })
    end
  }

  -- Rainbow Parentheses
  -- https://github.com/luochen1990/rainbow
  use {
    'luochen1990/rainbow',
    config = function ()
      require('plugins/configs/rainbow')
    end
  }

  -- Twilight - Dims Code outside Block
  -- https://github.com/folke/twilight.nvim
  use {
    'folke/twilight.nvim',
    opt = true,
    cmd = {"Twilight", "ZenMode"}
  }

  -- Zen mode
  -- https://github.com/folke/zen-mode.nvim
  use {
    'folke/zen-mode.nvim',
    opt = true,
    cmd = {"ZenMode"}
  }

  -- NOTE: Interface
  -- Telescope
  -- https://github.com/nvim-telescope/telescope.nvim
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function ()
      require('plugins/configs/telescope')
    end
  }

  -- Dashboard
  -- https://github.com/glepnir/dashboard-nvim
  use {
    'glepnir/dashboard-nvim',
    setup = function ()
      vim.g.dashboard_default_executive = 'telescope'
    end,
    config = function()
      require('plugins/configs/dashboard')
    end,
    after = "telescope.nvim"
  }

  -- Wilder Menu
  -- https://github.com/gelguy/wilder.nvim
  -- TODO: Right Selects
  use {
    'gelguy/wilder.nvim',
    requires = {
      "nixprime/cpsm"
    },
    keys = {
      ":",
      "/",
      "?"
    },
    config = function ()
      require('plugins/configs/wilder')
    end
  }

  -- NeoScroll
  -- https://github.com/karb94/neoscroll.nvim
  use {
    'karb94/neoscroll.nvim',
    opt = true,
    keys = {
      "<c-u>",
      "<c-d>",
    },
    config = function()
      require('neoscroll').setup()
    end
  }

  -- Nvim Tree
  -- TODO: Lots of Keybindings -> WhichKey
  -- TODO: Remove Git Signs from buffer
  -- TODO: Remove NVIMTREE title at the top
  -- TODO: Set Keybinding to NVTREEOPEN then in config rebind it to toggle
  -- https://github.com/kyazdani42/nvim-tree.lua
  -- NOTE: Should probably lazy load it on toggle cmd
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    opt = true,
    cmd = {"NvimTreeOpen"},
    config = function()
      require('plugins/configs/tree')
    end
  }

  -- Focus
  -- https://github.com/beauwilliams/focus.nvim
  use {
    "beauwilliams/focus.nvim",
    opt = true,
    cmd = {"FocusSplitDown", "FocusSplitRight", "FocusEnable"},
    config = function()
      require("focus").setup({
        excluded_filetypes = {
          "toggleterm",
          "dashbaord",
          "packer",
          "NvimTree"
        },
        excluded_buftypes = {"help", "terminal"},
        number = false,
        hybridnumber = true,
        absolutenumber_unfocussed = true
      })
    end
  }

  -- TODO: below
  -- NOTE: Editing
  -- Vim Move
  -- https://github.com/fedepujol/move.nvim
  use {
    'fedepujol/move.nvim',
    config = function ()
      vim.api.nvim_set_keymap('n', '<M-Down>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<M-Up>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<M-Down>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<M-Up>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<M-Right>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<M-Left>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<M-Right>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<M-Left>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
    end,
    opt = true,
    keys = {
      {'v','<M-Down>'},
      {'v', '<M-Up>'},
      {'v', '<M-Left>'},
      {'v', '<M-Right>'},
      {'n', '<M-Down>'},
      {'n', '<M-Up>'},
      {'n', '<M-Left>'},
      -- {'n', '<M-Right>'},
    }
  }

  -- EasyMotion
  -- https://github.com/easymotion/vim-easymotion
  use 'easymotion/vim-easymotion'

  -- Git Signs
  -- https://github.com/lewis6991/gitsigns.nvim
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lua/plenary.nvim'

  -- ToggleTerm
  -- https://github.com/akinsho/toggleterm.nvim
  use {"akinsho/toggleterm.nvim"}
  require("toggleterm").setup{}

  -- Surround
  -- https://github.com/tpope/vim-surround
  use 'tpope/vim-surround'


  use {'nvim-orgmode/orgmode',
    ft = {'org'},
    config = function()
      require('orgmode').setup{}
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

  -- Friendly Snippets
  -- https://github.com/rafamadriz/friendly-snippets
  use 'rafamadriz/friendly-snippets'

  -- Autopairs
  -- https://github.com/windwp/nvim-autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'


  -- Symbols Outline
  -- https://github.com/simrat39/symbols-outline.nvim
  use 'simrat39/symbols-outline.nvim'


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
  -- use 'folke/trouble.nvim'
  -- vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
    -- {silent = true, noremap = true}
  -- )
  -- vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  --   {silent = true, noremap = true}
  -- )
  -- vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  --   {silent = true, noremap = true}
  -- )
  -- vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  --   {silent = true, noremap = true}
  -- )
  -- vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  --   {silent = true, noremap = true}
  -- )
  -- vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  --   {silent = true, noremap = true}
  -- )



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

  -- LSP Diagnostics - Gutter Informaiton
  -- https://github.com/glepnir/lspsaga.nvim
  use 'tami5/lspsaga.nvim'
  require('lspsaga').init_lsp_saga()

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
  local get_hex = require('cokeline/utils').get_hex
  local yellow = vim.g.terminal_color_3
require('cokeline').setup({
          show_if_buffers_are_at_least = 2,
  default_hl = {
    focused = {
      fg = get_hex('Normal', 'fg'),
      bg = get_hex('ColorColumn', 'bg'),
    },
    unfocused = {
      fg = get_hex('Comment', 'fg'),
      bg = get_hex('ColorColumn', 'bg'),
    },
  },

  rendering = {
    left_sidebar = {
      filetype = 'NvimTree',
      components = {
        {
          text = '  NvimTree',
          hl = {
            fg = yellow,
            bg = get_hex('NvimTreeNormal', 'bg'),
            style = 'bold'
          }
        },
      }
    },
  },

  components = {
    {
      text = function(buffer) return (buffer.index ~= 1) and '▏' or '' end,
    },
    {
      text = '  ',
    },
    {
      text = function(buffer)
        return buffer.devicon.icon
      end,
      hl = {
        fg = function(buffer)
          return buffer.devicon.color
        end,
      },
    },
    {
      text = ' ',
    },
    {
      text = function(buffer) return buffer.filename .. '  ' end,
      hl = {
        style = function(buffer)
          return buffer.is_focused and 'bold' or nil
        end,
      }
    },
    {
      text = '',
      delete_buffer_on_left_click = true,
    },
    {
      text = '  ',
    },
  },
})
    end
  })

  -- Automatically setup configuration
  if packer_bootstrap then
    require('packer').sync()
  end
end)

