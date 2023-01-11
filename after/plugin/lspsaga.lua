local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  symbol_in_winbar = {
    enable = true,
    separator = ' > ',
    show_file = true,
    in_custom = true,
    click_support = function(node, clicks, button, modifiers)
      -- To see all available details: vim.pretty_print(node)
      local st = node.range.start
      local en = node.range['end']
      if button == "l" then
        if clicks == 2 then
          -- double left click to do nothing
        else -- jump to node's starting line+char
          vim.fn.cursor(st.line + 1, st.character + 1)
        end
      elseif button == "r" then
        if modifiers == "s" then
          print "lspsaga" -- shift right click to print "lspsaga"
        end -- jump to node's ending line+char
        vim.fn.cursor(en.line + 1, en.character + 1)
      elseif button == "m" then
        -- middle click to visual select node
        vim.fn.cursor(st.line + 1, st.character + 1)
        vim.cmd "normal v"
        vim.fn.cursor(en.line + 1, en.character + 1)
      end
    end
  },

  custom_kind = {
    File = { '', '#e2cca9' },
    Module = { '', '#80aa9e' },
    Namespace = { 'ﴯ', '#f28534' },
    Package = { ' ', '#d3869b' },
    Class = { 'ﴯ', '#d3869b' },
    Method = { '', '#d3869b' },
    Property = { 'ﰠ', '#2e3b3b' },
    Field = { "ﰠ", "#8bba7f" },
    Constructor = { "", "#80aa9e" },
    String = { ' ', '#b0b846' },
    Number = { " ", '#b0b846' },
    Boolean = { " ", '#f28534' },
    Array = { " ", '#80aa9e' },
    Object = { " ", '#f28534' },
    Key = { "", '#f2594b' },
    Null = { " ", '#f2594b' },
    EnumMember = { "", '#b0b846' },
    Struct = { "", '#d3869b' },
    Event = { "", '#d3869b' },
    Operator = { "", '#b0b846' },
  },
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local symbols = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

local sy2 = {

  File = { " " },
  Module = { " " },
  Namespace = { " " },
  Package = { " " },
  Class = { " " },
  Method = { " " },
  Property = { "ﰠ" },
  Field = { "ﰠ" },
  Constructor = { " " },
  Enum = { " " },
  Interface = { " " },
  Function = { " " },
  Variable = { " " },
  Constant = { " " },
  String = { " " },
  Number = { " " },
  Boolean = { "◩ " },
  Array = { " " },
  Object = { " " },
  Key = { " " },
  Null = { "ﳠ " },
  EnumMember = { " " },
  Struct = { " " },
  Event = { " " },
  Operator = { " " },
  TypeParameter = { " " },
}

local opts = { noremap = true, silent = true }
--vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
--vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('i', '<C-p>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', '<C-f>', '<Cmd>Lspsaga rename<CR>', opts)
--vim.keymap.set('i', '<C-f>', '<Cmd>Lspsaga rename<CR>', opts)

local function get_file_name(include_path)
  local file_name = require('lspsaga.symbolwinbar').get_file_name()
  if vim.fn.bufname '%' == '' then return '' end
  if include_path == false then return file_name end
  -- Else if include path: ./lsp/saga.lua -> lsp > saga.lua
  local sep = vim.loop.os_uname().sysname == 'Windows' and '\\' or '/'
  local path_list = vim.split(string.gsub(vim.fn.expand '%:~:.:h', '%%', ''), sep)
  local file_path = ''
  for _, cur in ipairs(path_list) do
    file_path = (cur == '.' or cur == '~') and '' or
        file_path .. cur .. ' ' .. '%#LspSagaWinbarSep#>%*' .. ' %*'
  end
  return file_path .. file_name
end

local function config_winbar()
  local exclude = {
    ['terminal'] = true,
    ['toggleterm'] = true,
    ['prompt'] = true,
    ['NvimTree'] = true,
    ['help'] = true,
  } -- Ignore float windows and exclude filetype
  if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
    vim.wo.winbar = ''
  else
    local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar')
    local sym
    if ok then sym = lspsaga.get_symbol_node() end
    local win_val = ''
    win_val = get_file_name(true) -- set to true to include path
    if sym ~= nil then win_val = win_val .. sym end
    vim.wo.winbar = win_val
  end
end

local events = { 'BufEnter', 'BufWinEnter', 'CursorMoved' }

vim.api.nvim_create_autocmd(events, {
  pattern = '*',
  callback = function() config_winbar() end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'LspsagaUpdateSymbol',
  callback = function() config_winbar() end,
})
--vim.cmd([[highlight LspSagaWinbar guifg=#e2cca9]])
vim.cmd([[highlight LspSagaWinbarSep guifg=#e2cca9]])
