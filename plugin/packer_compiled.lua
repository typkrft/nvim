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
local package_path_str = "/Users/brandon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/brandon/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/brandon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/brandon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/brandon/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  cpsm = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["focus.nvim"] = {
    commands = { "FocusSplitDown", "FocusSplitRight", "FocusEnable" },
    config = { "\27LJ\2\nÛ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\22excluded_buftypes\1\3\0\0\thelp\rterminal\23excluded_filetypes\1\0\3\30absolutenumber_unfocussed\2\17hybridnumber\2\vnumber\1\1\5\0\0\15toggleterm\14dashbaord\vpacker\rNvimTree\nsetup\nfocus\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\n/\0\1\2\0\3\1\a9\1\0\0\b\1\0\0X\1\2€'\1\1\0X\2\1€'\1\2\0L\1\2\0\5\bâ–\nindex\2 \0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ticon\fdevicon!\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon#\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a  \rfilename3\0\1\2\0\2\0\a9\1\0\0\15\0\1\0X\2\2€'\1\1\0X\2\1€+\1\0\0L\1\2\0\tbold\15is_focusedâ\5\1\0\14\0-\0V6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\0016\2\0\0'\4\6\0B\2\2\0029\2\a\0025\4\b\0005\5\14\0005\6\v\0\18\a\0\0'\t\t\0'\n\n\0B\a\3\2=\a\n\6\18\a\0\0'\t\f\0'\n\r\0B\a\3\2=\a\r\6=\6\15\0055\6\17\0\18\a\0\0'\t\16\0'\n\n\0B\a\3\2=\a\n\6\18\a\0\0'\t\f\0'\n\r\0B\a\3\2=\a\r\6=\6\18\5=\5\19\0045\5\26\0005\6\20\0004\a\3\0005\b\21\0005\t\22\0=\1\n\t\18\n\0\0'\f\23\0'\r\r\0B\n\3\2=\n\r\t=\t\24\b>\b\1\a=\a\25\6=\6\27\5=\5\28\0044\5\b\0005\6\30\0003\a\29\0=\a\31\6>\6\1\0055\6 \0>\6\2\0055\6\"\0003\a!\0=\a\31\0065\a$\0003\b#\0=\b\n\a=\a\24\6>\6\3\0055\6%\0>\6\4\0055\6'\0003\a&\0=\a\31\0065\a)\0003\b(\0=\b*\a=\a\24\6>\6\5\0055\6+\0>\6\6\0055\6,\0>\6\a\5=\5\25\4B\2\2\1K\0\1\0\1\0\1\ttext\a  \1\0\2\ttext\bï™• delete_buffer_on_left_click\2\nstyle\1\0\0\0\1\0\0\0\1\0\1\ttext\6 \1\0\0\0\1\0\0\0\1\0\1\ttext\a  \ttext\1\0\0\0\14rendering\17left_sidebar\1\0\0\15components\ahl\19NvimTreeNormal\1\0\1\nstyle\tbold\1\0\1\ttext\15  NvimTree\1\0\1\rfiletype\rNvimTree\15default_hl\14unfocused\1\0\0\fComment\ffocused\1\0\0\abg\16ColorColumn\1\0\0\afg\vNormal\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\21terminal_color_3\6g\bvim\fget_hex\19cokeline/utils\frequire\0" },
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle" },
    config = { "\27LJ\2\n§\1\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\bzsh\1\0\1\vrgb_0x\2\ash\1\0\1\vrgb_0x\2\ajs\1\0\1\bcss\2\thtml\1\0\1\bcss\2\bcss\1\0\0\1\0\1\bcss\2\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/abosnjakovic/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeOpen" },
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugins/configs/tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  orgmode = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["themer.lua"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/themer.lua",
    url = "https://github.com/themercorp/themer.lua"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["twilight.nvim"] = {
    commands = { "Twilight", "ZenMode" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["windline.nvim"] = {
    loaded = true,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/brandon/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\n/\0\1\2\0\3\1\a9\1\0\0\b\1\0\0X\1\2€'\1\1\0X\2\1€'\1\2\0L\1\2\0\5\bâ–\nindex\2 \0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ticon\fdevicon!\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon#\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a  \rfilename3\0\1\2\0\2\0\a9\1\0\0\15\0\1\0X\2\2€'\1\1\0X\2\1€+\1\0\0L\1\2\0\tbold\15is_focusedâ\5\1\0\14\0-\0V6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\5\0016\2\0\0'\4\6\0B\2\2\0029\2\a\0025\4\b\0005\5\14\0005\6\v\0\18\a\0\0'\t\t\0'\n\n\0B\a\3\2=\a\n\6\18\a\0\0'\t\f\0'\n\r\0B\a\3\2=\a\r\6=\6\15\0055\6\17\0\18\a\0\0'\t\16\0'\n\n\0B\a\3\2=\a\n\6\18\a\0\0'\t\f\0'\n\r\0B\a\3\2=\a\r\6=\6\18\5=\5\19\0045\5\26\0005\6\20\0004\a\3\0005\b\21\0005\t\22\0=\1\n\t\18\n\0\0'\f\23\0'\r\r\0B\n\3\2=\n\r\t=\t\24\b>\b\1\a=\a\25\6=\6\27\5=\5\28\0044\5\b\0005\6\30\0003\a\29\0=\a\31\6>\6\1\0055\6 \0>\6\2\0055\6\"\0003\a!\0=\a\31\0065\a$\0003\b#\0=\b\n\a=\a\24\6>\6\3\0055\6%\0>\6\4\0055\6'\0003\a&\0=\a\31\0065\a)\0003\b(\0=\b*\a=\a\24\6>\6\5\0055\6+\0>\6\6\0055\6,\0>\6\a\5=\5\25\4B\2\2\1K\0\1\0\1\0\1\ttext\a  \1\0\2\ttext\bï™• delete_buffer_on_left_click\2\nstyle\1\0\0\0\1\0\0\0\1\0\1\ttext\6 \1\0\0\0\1\0\0\0\1\0\1\ttext\a  \ttext\1\0\0\0\14rendering\17left_sidebar\1\0\0\15components\ahl\19NvimTreeNormal\1\0\1\nstyle\tbold\1\0\1\ttext\15  NvimTree\1\0\1\rfiletype\rNvimTree\15default_hl\14unfocused\1\0\0\fComment\ffocused\1\0\0\abg\16ColorColumn\1\0\0\afg\vNormal\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\21terminal_color_3\6g\bvim\fget_hex\19cokeline/utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusSplitDown lua require("packer.load")({'focus.nvim'}, { cmd = "FocusSplitDown", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusSplitRight lua require("packer.load")({'focus.nvim'}, { cmd = "FocusSplitRight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Twilight lua require("packer.load")({'twilight.nvim'}, { cmd = "Twilight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim', 'twilight.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FocusEnable lua require("packer.load")({'focus.nvim'}, { cmd = "FocusEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType jsonc ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "jsonc" }, _G.packer_plugins)]]
vim.cmd [[au FileType org ++once lua require("packer.load")({'orgmode'}, { ft = "org" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "json" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/filetype.lua]], true)
vim.cmd [[source /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/filetype.lua]]
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/filetype.lua]], false)
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], true)
vim.cmd [[source /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]]
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], false)
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], true)
vim.cmd [[source /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]]
time([[Sourcing ftdetect script at: /Users/brandon/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
