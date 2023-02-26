local lspsaga_status_ok, saga = pcall(require, 'lspsaga')
if not lspsaga_status_ok then
  return
end

saga.setup({
  ui = {
    title = true,
    border = 'solid',
    winblend = 0,
    expand = '',
    collapse = '',
    code_action = '',
    incoming = ' ',
    outgoing = ' ',
    kind = {
      -- File = { '', '@comment' },
      -- Folder = { ' ', '@comment' },
    },
  },
  diagnostic = {
    on_insert = true,
    on_follow = true,
    twice_into = false,
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    --1 is max
    max_width = 0.7,
    custom_fix = nil,
    custom_msg = nil,
    text_hl_follow = true,
    border_follow = true,
    keys = {
      exec_action = 'o',
      quit = 'q',
      go_action = 'g',
    },
  },
  code_action = {
    num_shortcut = true,
    keys = {
      quit = 'q',
      exec = '<CR>',
    },
  },
  lightbulb = {
    enable = true,
    enable_in_insert = true,
    -- cache_code_action = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  preview = {
    lines_above = 0,
    lines_below = 10,
  },
  scroll_preview = {
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  request_timeout = 2000,
  finder = {
    edit = { 'o', '<CR>' },
    vsplit = 's',
    split = 'i',
    tabe = 't',
    quit = { 'q', '<ESC>' },
  },
  definition = {
    edit = '<C-c>o',
    vsplit = '<C-c>v',
    split = '<C-c>i',
    tabe = '<C-c>t',
    quit = 'q',
    close = '<Esc>',
  },
  rename = {
    quit = '<C-c>',
    exec = '<CR>',
    mark = 'x',
    confirm = '<CR>',
    in_select = true,
    whole_project = true,
  },
  symbol_in_winbar = {
    enable = true,
    -- separator = ' > ',
    separator = '  ',
    show_file = true,
    --respect_root = true,
    folder_level = 2,
    in_custom = true,
    hide_keyword = true,
    color_mode = false,
  },
  outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    show_detail = true,
    auto_preview = true,
    auto_refresh = true,
    auto_close = true,
    custom_sort = nil,
    keys = {
      jump = 'o',
      expand_collapse = 'u',
      quit = 'q',
    },
  },
  callhierarchy = {
    show_detail = false,
    keys = {
      edit = 'e',
      vsplit = 's',
      split = 'i',
      tabe = 't',
      jump = 'o',
      quit = 'q',
      expand_collapse = 'u',
    },
  },
  server_filetype_map = {
    typescript = 'typescript'
  },
})

-- Gruvbox material --
-- vim.cmd([[highlight SagaWinbarVariable gui=NONE, guifg=#d3869b]])
-- vim.cmd([[highlight SagaWinbarSep gui=NONE, guifg=#7c6f64]])
-- vim.cmd([[highlight SagaWinbarFolderName gui=NONE, guifg=#e2cca9]])
-- vim.cmd([[highlight SagaWinbarFolder gui=NONE, guifg=#8bba7f]])
-- vim.cmd([[highlight SagaWinbarFilename gui=NONE, guifg=#7c6f64]])

-- OneDark --
vim.cmd([[highlight SagaWinbarSep gui=NONE, guifg=#abb2bf]])
vim.cmd([[highlight SagaWinbarFile gui=NONE, guifg=#abb2bf]])
vim.cmd([[highlight SagaWinbarFolderName gui=NONE, guifg=#abb2bf]])
vim.cmd([[highlight SagaWinbarWord gui=NONE, guifg=#abb2bf]])
