local lspkind_status_ok, lspkind = pcall(require, 'lspkind')
if not lspkind_status_ok then
  return
end

lspkind.init({
  -- defines how annotations are shown
  -- default: symbol
  -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
  -- mode = 'symbol',
  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',
  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Text = "󰭷 ",
    Method = " ",
    Function = "󰡱 ",
    Constructor = " ",
    Field = " ",
    Variable = " ",
    Class = " ",
    Interface = " ",
    Module = " ",
    Property = " ",
    Unit = " ",
    Value = "󰎠 ",
    Enum = " ",
    Keyword = "󰌋 ",
    Snippet = " ",
    Color = "󰏘 ",
    File = "󰈙 ",
    Reference = "󰈇 ",
    Folder = "󰉋 ",
    EnumMember = " ",
    Constant = " ",
    Struct = " ",
    Event = " ",
    Operator = " ",
    TypeParameter = " "
  },
  -- symbol_map = {
  --   Text = "󰉿 ",
  --   Method = "󰆧 ",
  --   Function = "󰊕",
  --   Constructor = " ",
  --   Field = "󰜢 ",
  --   Variable = " ",
  --   Class = "󰠱 ",
  --   Interface = " ",
  --   Module = " ",
  --   Property = "󰠱",
  --   Unit = " ",
  --   Value = "󰎠 ",
  --   Enum = " ",
  --   Keyword = "󰌋 ",
  --   Snippet = "",
  --   Color = "󰏘 ",
  --   File = "󰈙 ",
  --   Reference = "󰈇 ",
  --   Folder = "󰉋 ",
  --   EnumMember = "",
  --   Constant = "󰏿",
  --   Struct = "󰙅",
  --   Event = "",
  --   Operator = "󰆕 ",
  --   TypeParameter = "󰊄"
  -- },
})
