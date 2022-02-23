-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/link/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/link/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/link/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/link/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/link/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  cpsm = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\30plugins/configs/dashboard\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["focus.nvim"] = {
    commands = { "FocusSplitDown", "FocusSplitRight", "FocusEnable" },
    config = { "\27LJ\2\2Û\1\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\22excluded_buftypes\1\3\0\0\thelp\rterminal\23excluded_filetypes\1\0\3\17hybridnumber\2\30absolutenumber_unfocussed\2\vnumber\1\1\5\0\0\15toggleterm\14dashbaord\vpacker\rNvimTree\nsetup\nfocus\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\2Æ\6\0\0\5\0\17\00076\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\b\0'\2\4\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\b\0'\2\6\0'\3\n\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\v\0'\2\f\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\v\0'\2\r\0'\3\a\0004\4\0\0B\0\5\0016\0\14\0'\1\15\0B\0\2\0029\0\16\0004\1\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\6T\6t\5š\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = true })<cr>™\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = true })<cr>\6oƒ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>\6F‚\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>\6f\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27plugins/configs/indent\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\2þ\4\0\0\5\0\25\0A6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\a\0'\3\b\0005\4\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\n\0'\2\4\0'\3\v\0005\4\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\n\0'\2\a\0'\3\r\0005\4\14\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\15\0'\3\16\0005\4\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\18\0'\3\19\0005\4\20\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\n\0'\2\15\0'\3\21\0005\4\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\n\0'\2\18\0'\3\23\0005\4\24\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:MoveHBlock(-1)<CR>\1\0\2\vsilent\2\fnoremap\2\23:MoveHBlock(1)<CR>\1\0\2\vsilent\2\fnoremap\2\23:MoveHChar(-1)<CR>\r<M-Left>\1\0\2\vsilent\2\fnoremap\2\22:MoveHChar(1)<CR>\14<M-Right>\1\0\2\vsilent\2\fnoremap\2\23:MoveBlock(-1)<CR>\1\0\2\vsilent\2\fnoremap\2\22:MoveBlock(1)<CR>\6v\1\0\2\vsilent\2\fnoremap\2\22:MoveLine(-1)<CR>\v<M-Up>\1\0\2\vsilent\2\fnoremap\2\21:MoveLine(1)<CR>\r<M-Down>\6n\20nvim_set_keymap\bapi\bvim\0" },
    keys = { { "v", "<M-Down>" }, { "v", "<M-Up>" }, { "v", "<M-Left>" }, { "v", "<M-Right>" }, { "n", "<M-Down>" }, { "n", "<M-Up>" }, { "n", "<M-Left>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  neorg = {
    config = { "\27LJ\2\2Ç\2\0\0\6\0\18\0\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\16\0005\2\3\0004\3\0\0=\3\4\0025\3\b\0005\4\6\0005\5\5\0=\5\a\4=\4\t\3=\3\n\0024\3\0\0=\3\v\0024\3\0\0=\3\f\0025\3\14\0005\4\r\0=\4\t\3=\3\15\2=\2\17\1B\0\2\1K\0\1\0\tload\1\0\0\18core.gtd.base\1\0\0\1\0\1\14workspace\16example_gtd\25core.norg.completion\24core.norg.concealer\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\1\16example_gtd(/Users/brandon/Code/Git/example_gtd\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    keys = { { "", "<c-u>" }, { "", "<c-d>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\2/\0\1\2\0\3\1\a9\1\0\0\b\1\0\0X\1\2€'\1\1\0X\2\1€'\1\2\0L\1\2\0\5\bâ–\nindex\2 \0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ticon\fdevicon!\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon#\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a  \rfilename3\0\1\2\0\2\0\a9\1\0\0\15\0\1\0X\2\2€'\1\1\0X\2\1€+\1\0\0L\1\2\0\tbold\15is_focusedâ\5\1\0\f\0-\0V6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\0016\2\0\0'\3\6\0B\2\2\0029\2\a\0025\3\b\0005\4\14\0005\5\v\0\18\6\0\0'\a\t\0'\b\n\0B\6\3\2=\6\n\5\18\6\0\0'\a\f\0'\b\r\0B\6\3\2=\6\r\5=\5\15\0045\5\17\0\18\6\0\0'\a\16\0'\b\n\0B\6\3\2=\6\n\5\18\6\0\0'\a\f\0'\b\r\0B\6\3\2=\6\r\5=\5\18\4=\4\19\0035\4\26\0005\5\20\0004\6\3\0005\a\21\0005\b\22\0=\1\n\b\18\t\0\0'\n\23\0'\v\r\0B\t\3\2=\t\r\b=\b\24\a>\a\1\6=\6\25\5=\5\27\4=\4\28\0034\4\b\0005\5\30\0003\6\29\0=\6\31\5>\5\1\0045\5 \0>\5\2\0045\5\"\0003\6!\0=\6\31\0055\6$\0003\a#\0=\a\n\6=\6\24\5>\5\3\0045\5%\0>\5\4\0045\5'\0003\6&\0=\6\31\0055\6)\0003\a(\0=\a*\6=\6\24\5>\5\5\0045\5+\0>\5\6\0045\5,\0>\5\a\4=\4\25\3B\2\2\1K\0\1\0\1\0\1\ttext\a  \1\0\2\ttext\bï™• delete_buffer_on_left_click\2\nstyle\1\0\0\0\1\0\0\0\1\0\1\ttext\6 \1\0\0\0\1\0\0\0\1\0\1\ttext\a  \ttext\1\0\0\0\14rendering\17left_sidebar\1\0\0\15components\ahl\19NvimTreeNormal\1\0\1\nstyle\tbold\1\0\1\ttext\15  NvimTree\1\0\1\rfiletype\rNvimTree\15default_hl\14unfocused\1\0\0\fComment\ffocused\1\0\0\abg\16ColorColumn\1\0\0\afg\vNormal\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\21terminal_color_3\6g\bvim\fget_hex\19cokeline/utils\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle" },
    config = { "\27LJ\2\2§\1\0\0\3\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\bzsh\1\0\1\vrgb_0x\2\ash\1\0\1\vrgb_0x\2\ajs\1\0\1\bcss\2\thtml\1\0\1\bcss\2\bcss\1\0\0\1\0\1\bcss\2\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/abosnjakovic/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeOpen" },
    config = { "\27LJ\2\0024\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\25plugins/configs/tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "neorg" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2C\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28plugins/configs/rainbow\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    after = { "dashboard-nvim" },
    loaded = true,
    only_config = true
  },
  ["themer.lua"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27plugins/configs/themer\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/themer.lua",
    url = "https://github.com/themercorp/themer.lua"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["twilight.nvim"] = {
    commands = { "Twilight", "ZenMode" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27plugins/configs/wilder\frequire\0" },
    keys = { { "", ":" }, { "", "/" }, { "", "?" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["windline.nvim"] = {
    loaded = true,
    path = "/home/link/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/link/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2G\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\2Æ\6\0\0\5\0\17\00076\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\b\0'\2\4\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\b\0'\2\6\0'\3\n\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\v\0'\2\f\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\v\0'\2\r\0'\3\a\0004\4\0\0B\0\5\0016\0\14\0'\1\15\0B\0\2\0029\0\16\0004\1\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\6T\6t\5š\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = true })<cr>™\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = true })<cr>\6oƒ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>\6F‚\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>\6f\6n\20nvim_set_keymap\bapi\bvim\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\31plugins/configs/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27plugins/configs/indent\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: themer.lua
time([[Config for themer.lua]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\27plugins/configs/themer\frequire\0", "config", "themer.lua")
time([[Config for themer.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28plugins/configs/rainbow\frequire\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\2/\0\1\2\0\3\1\a9\1\0\0\b\1\0\0X\1\2€'\1\1\0X\2\1€'\1\2\0L\1\2\0\5\bâ–\nindex\2 \0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ticon\fdevicon!\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon#\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a  \rfilename3\0\1\2\0\2\0\a9\1\0\0\15\0\1\0X\2\2€'\1\1\0X\2\1€+\1\0\0L\1\2\0\tbold\15is_focusedâ\5\1\0\f\0-\0V6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\0016\2\0\0'\3\6\0B\2\2\0029\2\a\0025\3\b\0005\4\14\0005\5\v\0\18\6\0\0'\a\t\0'\b\n\0B\6\3\2=\6\n\5\18\6\0\0'\a\f\0'\b\r\0B\6\3\2=\6\r\5=\5\15\0045\5\17\0\18\6\0\0'\a\16\0'\b\n\0B\6\3\2=\6\n\5\18\6\0\0'\a\f\0'\b\r\0B\6\3\2=\6\r\5=\5\18\4=\4\19\0035\4\26\0005\5\20\0004\6\3\0005\a\21\0005\b\22\0=\1\n\b\18\t\0\0'\n\23\0'\v\r\0B\t\3\2=\t\r\b=\b\24\a>\a\1\6=\6\25\5=\5\27\4=\4\28\0034\4\b\0005\5\30\0003\6\29\0=\6\31\5>\5\1\0045\5 \0>\5\2\0045\5\"\0003\6!\0=\6\31\0055\6$\0003\a#\0=\a\n\6=\6\24\5>\5\3\0045\5%\0>\5\4\0045\5'\0003\6&\0=\6\31\0055\6)\0003\a(\0=\a*\6=\6\24\5>\5\5\0045\5+\0>\5\6\0045\5,\0>\5\a\4=\4\25\3B\2\2\1K\0\1\0\1\0\1\ttext\a  \1\0\2\ttext\bï™• delete_buffer_on_left_click\2\nstyle\1\0\0\0\1\0\0\0\1\0\1\ttext\6 \1\0\0\0\1\0\0\0\1\0\1\ttext\a  \ttext\1\0\0\0\14rendering\17left_sidebar\1\0\0\15components\ahl\19NvimTreeNormal\1\0\1\nstyle\tbold\1\0\1\ttext\15  NvimTree\1\0\1\rfiletype\rNvimTree\15default_hl\14unfocused\1\0\0\fComment\ffocused\1\0\0\abg\16ColorColumn\1\0\0\afg\vNormal\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\21terminal_color_3\6g\bvim\fget_hex\19cokeline/utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2C\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\30plugins/configs/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd dashboard-nvim ]]

-- Config for: dashboard-nvim
try_loadstring("\27LJ\2\0029\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\30plugins/configs/dashboard\frequire\0", "config", "dashboard-nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusEnable lua require("packer.load")({'focus.nvim'}, { cmd = "FocusEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusSplitRight lua require("packer.load")({'focus.nvim'}, { cmd = "FocusSplitRight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusSplitDown lua require("packer.load")({'focus.nvim'}, { cmd = "FocusSplitDown", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Twilight lua require("packer.load")({'twilight.nvim'}, { cmd = "Twilight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim', 'twilight.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> <M-Down> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Down>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <c-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>c-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <M-Left> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Left>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> / <cmd>lua require("packer.load")({'wilder.nvim'}, { keys = "/", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <M-Up> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Up>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <c-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>c-u>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> : <cmd>lua require("packer.load")({'wilder.nvim'}, { keys = ":", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <M-Left> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Left>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ? <cmd>lua require("packer.load")({'wilder.nvim'}, { keys = "?", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <M-Up> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Up>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <M-Right> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Right>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <M-Down> <cmd>lua require("packer.load")({'move.nvim'}, { keys = "<lt>M-Down>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType jsonc ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "jsonc" }, _G.packer_plugins)]]
vim.cmd [[au FileType norg ++once lua require("packer.load")({'neorg'}, { ft = "norg" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "json" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/link/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], true)
vim.cmd [[source /home/link/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]]
time([[Sourcing ftdetect script at: /home/link/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
