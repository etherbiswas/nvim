require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
-----------------------------------------------------------
-- Gruvbox-Material                                      --
-----------------------------------------------------------
vim.g.gruvbox_material_better_performance = '1'
vim.g.gruvbox_material_disable_italic_comment = '0'
vim.g.gruvbox_material_transparent_background = "0"
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_foreground = 'material'
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_visual = 'reverse'
vim.g.gruvbox_material_statusline_style = 'default'
vim.g.gruvbox_contrast_dark = 'hard'

-- Highlight numberline
local grpid = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {})
vim.api.nvim_create_autocmd('ColorScheme', {
  group = grpid,
  pattern = 'gruvbox-material',
  command =
  'hi LineNr                             guibg=#282828  |' ..
      'hi CursorLineNr                       guibg=#282828  |' ..
      'hi DiagnosticVirtualTextError         guifg=#db4740 guibg=#3c1f1e |' ..
      'hi DiagnosticVirtualTextWarn          guifg=#e9b143 guibg=#473c29 |' ..
      'hi DiagnosticVirtualTextInformation   guifg=#80aa9e guibg=#2e3b3b |' ..
      'hi DiagnosticVirtualTextHint          guifg=#8bba7f guibg=#333e34 |' ..
      'hi NvimTreeNormal                     guibg=#181818 |' ..
      'hi NvimTreeEndOfBuffer                guibg=#181818 |' ..
      'hi NoiceCmdlinePopupBorderCmdline     guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePromptBorder              guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePromptNormal              guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePromptTitle               guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePromptPrefix              guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePromptCounter             guifg=#ea6962 guibg=#282828 |' ..
      'hi TelescopePreviewTitle              guifg=#89b482 guibg=#282828 |' ..
      'hi TelescopePreviewBorder             guifg=#89b482 guibg=#282828 |' ..
      'hi TelescopeResultsTitle              guifg=#89b482 guibg=#282828 |' ..
      'hi TelescopeResultsBorder             guifg=#89b482 guibg=#282828 |' ..
      'hi TelescopeMatching                  guifg=#d8a657 guibg=#282828 |' ..
      'hi TelescopeSelection                 guifg=#ffffff guibg=#32302f |' ..
      'hi FloatBorder                        guifg=#ea6962 guibg=#282828 |' ..
      'hi BqfPreviewBorder                   guifg=#ea6962 guibg=#282828 |' ..
      'hi NormalFloat                        guibg=#282828 |' ..
      'hi IndentBlanklineContextChar         guifg=#d3869b |' ..
      'hi markid1                            guifg=#ff8f88 |' ..
      'hi markid2                            guifg=#ffb074 |' ..
      'hi markid3                            guifg=#cfdc8b |' ..
      'hi markid4                            guifg=#a3d4c9 |' ..
      'hi markid5                            guifg=#f9acc1 |' ..
      'hi markid6                            guifg=#afdaa8 |' ..
      'hi markid7                            guifg=#fecc7d |' ..
      'hi markid8                            guifg=#eed8b2 |' ..
      'hi markid9                            guifg=#ffedc7 |' ..
      'hi markid10                           guifg=#cebfaa |' ..
      'hi CodewindowBorder                   guifg=#ea6962 |'
})

local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
