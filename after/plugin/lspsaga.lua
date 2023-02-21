local lspsaga_status_ok, saga = pcall(require, 'lspsaga')
if not lspsaga_status_ok then
  return
end

saga.setup({
  ui = {
    theme = 'round',
    border = 'solid',
    winblend = 0,
    expand = '',
    collapse = '',
    preview = ' ',
    code_action = '',
    diagnostic = '🐞',
    incoming = ' ',
    outgoing = ' ',
    colors = {
      --float window normal bakcground color
      normal_bg = '#1d1536',
      --title background color
      title_bg = '#afd700',
    },
    --   kind = {
    --     File = { '', '#7c6f64' },
    --     Folder = { ' ', '#8bba7f' },
    --     Module = { ' ', '#8bba7f' },
    --     Namespace = { 'ﴯ ', '#8bba7f' },
    --     Package = { '  ', '#d3869b' },
    --     Class = { 'ﴯ ', '#80aa9e' },
    --     Constant = { ' ', '#d3869b' },
    --     Method = { ' ', '#b0b846' },
    --     Variable = { ' ', '#b0b846' },
    --     Function = { ' ', '#b0b846' },
    --     Property = { 'ﰠ ', '#2e3b3b' },
    --     Interface = { '', '#8bba7f' },
    --     Field = { 'ﰠ ', '#80aa9e' },
    --     Constructor = { ' ', '#b0b846' },
    --     String = { ' ', '#b0b846' },
    --     Number = { ' ', '#d3869b' },
    --     Boolean = { '◩ ', '#f2594b' },
    --     Array = { ' ', '#f2594b' },
    --     Object = { ' ', '#f28534' },
    --     Key = { '', '#80aa9e' },
    --     Null = { 'ﳠ ', '#d3869b' },
    --     EnumMember = { ' ', '#80aa9e' },
    --     Struct = { ' ', '#d3869b' },
    --     Event = { ' ', '#80aa9e' },
    --     Operator = { '', '#b0b846' },
    --     TypeParameter = { ' ', '#b0b846' },
    --     TypeAlias = { ' ', '#b0b846' },
    --     Parameter = { ' ', '#80aa9e' },
    --     Macro = { '  ', '#f2594b' },
    --     StaticMethod = { 'ﴂ ', '#f28534' },
    --   }
    -- },
    -- kind = {
    --   File = { '', '#abb2bf' },
    --   Folder = { ' ', '#61afef' },
    --   Module = { ' ', '#98c379' },
    --   Namespace = { 'ﴯ ', '#98c379' },
    --   Package = { '  ', '#c678dd' },
    --   Class = { 'ﴯ ', '#61afef' },
    --   Constant = { ' ', '#e06c75' },
    --   Method = { ' ', '#c678dd' },
    --   Variable = { ' ', '#98ce79' },
    --   Function = { ' ', '#98ce79' },
    --   Property = { 'ﰠ ', '#abb2bf' },
    --   Interface = { '', '#56b6c2' },
    --   Field = { 'ﰠ ', '#61afef' },
    --   Constructor = { ' ', '#abb2bf' },
    --   String = { ' ', '#e06c75' },
    --   Number = { ' ', '#c678dd' },
    --   Boolean = { '◩ ', '#e06c75' },
    --   Array = { ' ', '#e06c75' },
    --   Object = { ' ', '#e5c078' },
    --   Key = { '', '#61afef' },
    --   Null = { 'ﳠ ', '#56b6c2' },
    --   EnumMember = { ' ', '#56b6c2' },
    --   Struct = { ' ', '#c678dd' },
    --   Event = { ' ', '#61afef' },
    --   Operator = { '', '#98c379' },
    --   TypeParameter = { ' ', '#98c379' },
    --   TypeAlias = { ' ', '#98c379' },
    --   Parameter = { ' ', '#61afef' },
    --   Macro = { '  ', '#e06c75' },
    --   StaticMethod = { 'ﴂ ', '#e5c07b' },
    -- }
  },
  diagnostic = {
    twice_into = false,
    show_code_action = true,
    show_source = true,
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
-- vim.cmd([[highlight LspSagaWinbarSep gui=NONE, guifg=#7c6f64]])
-- vim.cmd([[highlight LspSagaWinbarFile gui=NONE, guifg=#7c6f64]])
-- vim.cmd([[highlight LspSagaWinbarWord gui=NONE, guifg=#7c6f64]])

-- Onedark --
-- vim.cmd([[highlight LspSagaWinbarSep gui=NONE, guifg=#abb2bf]])
-- vim.cmd([[highlight LspSagaWinbarFile gui=NONE, guifg=#abb2bf]])
-- vim.cmd([[highlight LspSagaWinbarFolderName gui=NONE, guifg=#abb2bf]])
-- vim.cmd([[highlight LspSagaWinbarWord gui=NONE, guifg=#abb2bf]])
