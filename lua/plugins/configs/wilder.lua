vim.cmd([[
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Right>',
      \ 'reject_key': '<Left>',
      \ 'enable_cmdline_enter': 0,
      \ })

" 'file_command' : for ripgrep : ['rg', '--files']
"                : for fd      : ['fd', '-tf']
" 'dir_command'  : for fd      : ['fd', '-td']
" 'filters'      : use ['cpsm_filter'] for performance, requires cpsm vim plugin
"                  found at https://github.com/nixprime/cpsm
call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#python_file_finder_pipeline({
      \       'file_command': ['rg', '--files'],
      \       'dir_command': ['fd', '-td'],
      \       'filters': ['fuzzy_filter', 'difflib_sorter'],
      \     }),
      \     wilder#cmdline_pipeline({
      \       'language': 'python',
      \       'fuzzy': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern(),
      \       'sorter': wilder#python_difflib_sorter(),
      \       'engine': 're',
      \     }),
      \   ),
      \ ])

" wilder#popupmenu_border_theme() is optional.
" 'min_height' : sets the minimum height of the popupmenu
"               : can also be a number
" 'max_height' : set to the same as 'min_height' to set the popupmenu to a fixed height
" 'reverse'    : if 1, shows the candidates from bottom to top
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'min_width': '100%',
      \ 'min_height': '10%',
      \ 'pumblend': 10,
      \ 'border': 'rounded',
      \ 'reverse': 0,
      \ 'highlights': {
      \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#50fa7b'}]),
      \ },
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ })))
]])

-- vim.api.nvim_set_keymap('c', '<Right>',  "<cmd>call wilder#reject_completion()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('c', '<CR>',  "<cmd>call wilder#accept_completion()<CR><CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('c', '<Tab>',  "<cmd>call v:lua.cmp.utils.keymap.set_map(18)<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('c', '<S-Tab>',  "<cmd>call v:lua.cmp.utils.keymap.set_map(13)<CR>", { noremap = true, silent = true })
