local g = vim.g
g.dashboard_session_directory = '~/.local/share/nvim/sessions'
g.dashboard_default_executive ='telescope'
g.dashboard_custom_section = {
    a = {description = {"  Find File                 leader ff"}, command = "Telescope find_files"},
    b = {description = {"  Recents                   leader fr"}, command = "Telescope oldfiles"},
    c = {description = {"  Find Word                 leader fw"}, command = "Telescope live_grep"},
    d = {description = {"  New File                  leader fn"}, command = "DashboardNewFile"},
    e = {description = {"  Bookmarks                 leader fb"}, command = "Telescope marks"},
    f = {description = {"  Load Last Session         leader sl"}, command = "SessionLoad"},
    g = {description = {"  Update Plugins            leader pu"}, command = "PackerUpdate"},
    h = {description = {"  Settings                  leader fv"}, command = "edit $MYVIMRC"},
    i = {description = {"  Exit                      leader qq"}, command = "exit"}
}

-- g.dashboard_custom_footer = {'type  :help<Enter>  or  <F1>  for on-line help'}

vim.cmd[[
  nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
  nnoremap <silent> <Leader>fr :DashboardFindHistory<CR>
  nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
  nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
  nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
  nmap <Leader>sl :<C-u>SessionLoad<CR>
  nmap <Leader>pu :PackerSync<CR>
  nmap <Leader>fv :e $MYVIMRC
  nmap <Leader>qq :q<CR>
  " nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
  " nmap <Leader>ss :<C-u>SessionSave<CR>
]]

vim.cmd [[
augroup dashboard_au
     autocmd! * <buffer>
     autocmd User dashboardReady let &l:stl = ' '
     autocmd User dashboardReady nnoremap <buffer> <leader>q <cmd>exit<CR>
     autocmd User dashboardReady nnoremap <buffer> <leader>u <cmd>PackerUpdate<CR>
     autocmd User dashboardReady nnoremap <buffer> <leader>l <cmd>SessionLoad<CR>
augroup END
]]

vim.cmd[[hi DashboardHeader guifg=#50fa7b]]

g.dashboard_custom_header = {
  " ⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⢰⠃⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠈⣇⠀⠀⠀⠀",
  " ⠀⠀⠀⢸⠉⠉⠈⡶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⡋⠈⠉⣿⠀⠀⠀⠀",
  " ⠀⠀⠀⠘⢧⠤⠞⠀⠀⢹⠓⢦⡀⠀⠀⢠⡀⡼⢦⢀⡀⠀⢀⡤⠖⡏⠀⠀⠑⠤⣴⠃⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠈⠳⣄⣀⡤⠋⠀⠀⣹⣦⠴⠃⠛⠁⠘⠋⠧⣤⢏⠀⠀⠘⠦⣀⣠⠞⠁⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⠈⢳⣀⣀⡠⠔⠁⣹⠀⠀⠀⠀⠀⠀⠀⢾⠈⠳⢤⣀⣀⡼⠁⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⢀⡴⢧⣀⢀⣀⡴⠋⠀⠀⠀⣠⠀⠀⠀⠘⢦⣀⡀⣀⡼⢧⡀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⣠⠎⠀⠀⠈⠉⠁⠀⠀⣀⣤⡼⠭⢧⣤⣄⠀⠀⠈⠉⠉⠀⠀⠙⢦⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⣠⠞⠁⢀⡀⠀⠀⠀⠀⠀⠀⠈⢳⢇⣀⣨⡗⠉⠀⠀⠀⠀⠀⠀⢀⡀⠀⠳⣄⠀⠀⠀⠀",
  " ⠀⣠⠞⠁⢀⣤⢾⡇⠀⠀⠀⠀⠀⠀⠀⠸⠖⠋⠓⠿⠀⠀⠀⠀⠀⠀⠀⠀⡿⢦⡀⠈⠓⢤⡀⠀",
  " ⣞⠁⠐⠚⠉⠀⣸⡇⠀⣠⠴⠶⠦⣤⡀⠀⠀⠀⠀⠀⢀⣠⠴⠶⠶⣄⠀⠀⣇⠀⠉⠓⠂⠀⢹⠀",
  " ⠈⠓⠒⠒⠒⠋⠹⡇⢰⡃⠀⠀⡇⠀⠙⡆⠀⠀⠀⢠⠏⠁⠀⡇⠀⠈⡇⠀⡏⠙⠒⠒⠒⠚⠁⠀",
  " ⠀⠀⠀⠀⠀⠀⠀⣇⠈⢷⣄⠉⠏⠁⣠⠇⠀⠀⠀⠸⣄⠀⠉⠏⠁⡼⠁⢰⠇⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠈⠉⠉⠉⠁⢀⡀⠀⠀⡀⠈⠉⠉⠉⠉⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⠀⠀⠹⣄⠀⠀⠀⠀⠀⠀⠉⢳⠋⠁⠀⠀⠀⠀⠀⢀⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠦⣀⠀⠀⠳⠦⠴⠛⠶⠤⠞⠁⠀⣀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠶⢤⣀⡀⠀⢀⣀⣠⠴⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "                 ⠉⠉⠉⠁                ",
  "                                     ",
  "              N E O V I M            ",
}


local utils = require('telescope.utils')
local set_var = vim.api.nvim_set_var

local git_root, ret = utils.get_os_command_output({ "git", "rev-parse", "--show-toplevel" }, vim.loop.cwd())

local function get_dashboard_git_status()
  local git_cmd = {'git', 'status', '-s', '--', '.'}
  local output = utils.get_os_command_output(git_cmd)
  set_var('dashboard_custom_footer', {'Git status', '', unpack(output)})
end

if ret ~= 0 then
  local is_worktree = utils.get_os_command_output({ "git", "rev-parse", "--is-inside-work-tree" }, vim.loop.cwd())
  if is_worktree[1] == "true" then
    get_dashboard_git_status()
  else
    set_var('dashboard_custom_footer', {'Not in a git directory'})
  end
else
    get_dashboard_git_status()
end

-- vim.cmd[[
-- " Show image in dashboard using ansi escape sequences
-- function! DashboardImage()
--     let s:width = 600
--     let s:height = 10
--     let s:row = float2nr(s:height / 5)
--     let s:col = float2nr((&columns - s:width) / 2)
--     let s:opts = {
--                 \ 'relative': 'editor',
--                 \ 'row': s:row,
--                 \ 'col': s:col,
--                 \ 'width': s:width,
--                 \ 'height': s:height,
--                 \ 'style': 'minimal'
--                 \ }
--     let s:buf = nvim_create_buf(v:false, v:true)
--     let s:win = nvim_open_win(s:buf, v:true, s:opts)
--     hi! DashboardImage guibg=NONE guifg=NONE
--     call nvim_win_set_option(s:win, "winblend", 0)
--     call nvim_win_set_option(s:win, "winhl", "Normal:DashboardImage")
--     terminal cat ~/test.cat | lolcat
--     :exe "normal \<C-W>\<C-w>"
-- endfunction
-- ]]

-- vim.cmd [[
-- " show image in dashboard
-- autocmd Filetype dashboard call DashboardImage()
--
--   let g:dashboard_preview_command="cat"
--   let g:dashboard_preview_file="~/test.cat"
--   let g:dashboard_preview_pipeline="/opt/homebrew/bin/lolcat"
--   let g:dashboard_preview_file_width=70
--   let g:dashboard_preview_file_height=10
--
--   nmap <Leader>ss :<C-u>SessionSave<CR>
--   nmap <Leader>sl :<C-u>SessionLoad<CR>
--   nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
--   nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
--   nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
--   nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
--   nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
--   nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
--
--   "Header 
--   " let g:dashboard_custom_header =<< trim END
--   " ⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⢰⠃⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠈⣇⠀⠀⠀⠀
--   " ⠀⠀⠀⢸⠉⠉⠈⡶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⡋⠈⠉⣿⠀⠀⠀⠀
--   " ⠀⠀⠀⠘⢧⠤⠞⠀⠀⢹⠓⢦⡀⠀⠀⢠⡀⡼⢦⢀⡀⠀⢀⡤⠖⡏⠀⠀⠑⠤⣴⠃⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠈⠳⣄⣀⡤⠋⠀⠀⣹⣦⠴⠃⠛⠁⠘⠋⠧⣤⢏⠀⠀⠘⠦⣀⣠⠞⠁⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⠈⢳⣀⣀⡠⠔⠁⣹⠀⠀⠀⠀⠀⠀⠀⢾⠈⠳⢤⣀⣀⡼⠁⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⢀⡴⢧⣀⢀⣀⡴⠋⠀⠀⠀⣠⠀⠀⠀⠘⢦⣀⡀⣀⡼⢧⡀⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⣠⠎⠀⠀⠈⠉⠁⠀⠀⣀⣤⡼⠭⢧⣤⣄⠀⠀⠈⠉⠉⠀⠀⠙⢦⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⣠⠞⠁⢀⡀⠀⠀⠀⠀⠀⠀⠈⢳⢇⣀⣨⡗⠉⠀⠀⠀⠀⠀⠀⢀⡀⠀⠳⣄⠀⠀⠀⠀
--   " ⠀⣠⠞⠁⢀⣤⢾⡇⠀⠀⠀⠀⠀⠀⠀⠸⠖⠋⠓⠿⠀⠀⠀⠀⠀⠀⠀⠀⡿⢦⡀⠈⠓⢤⡀⠀
--   " ⣞⠁⠐⠚⠉⠀⣸⡇⠀⣠⠴⠶⠦⣤⡀⠀⠀⠀⠀⠀⢀⣠⠴⠶⠶⣄⠀⠀⣇⠀⠉⠓⠂⠀⢹⠀
--   " ⠈⠓⠒⠒⠒⠋⠹⡇⢰⡃⠀⠀⡇⠀⠙⡆⠀⠀⠀⢠⠏⠁⢸⡇⠀⠈⡇⠀⡏⠙⠒⠒⠒⠚⠁⠀
--   " ⠀⠀⠀⠀⠀⠀⠀⣇⠈⢷⣄⠉⠏⠁⣠⠇⠀⠀⠀⠸⣄⠀⠙⠋⣀⡼⠁⢰⠇⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠈⠉⠉⠉⠁⢀⡀⠀⠀⡀⠈⠉⠛⠉⠁⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⠀⠀⠹⣄⠀⠀⠀⠀⠀⠀⠉⢳⠋⠁⠀⠀⠀⠀⠀⢀⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠦⣀⠀⠀⠳⠦⠴⠛⠶⠤⠞⠁⠀⣀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--   " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠶⢤⣀⡀⠀⢀⣀⣠⠴⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--   "                 ⠉⠉⠉⠁
--   "             
--   "              N E O V I M
--   " END
--   let g:dashboard_custom_footer =<< trim END
--   END
-- ]]

