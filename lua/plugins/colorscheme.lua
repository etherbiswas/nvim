return {
  "sainnhe/gruvbox-material",
  config = function ()
    vim.g.gruvbox_material_better_performance = '1'
    vim.g.gruvbox_material_enable_bold = '0'
    vim.g.gruvbox_material_disable_italic_comment = '0'
    vim.g.gruvbox_material_transparent_background = "0"
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'material'
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
    vim.g.gruvbox_material_visual = 'grey background' -- 'reverse'
    vim.g.gruvbox_material_current_word = 'underline' -- 'grey background'
    vim.g.gruvbox_material_statusline_style = 'default'
    vim.g.gruvbox_contrast_dark = 'hard'

-- Gruvbox Material --
local gruvm = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {})
vim.api.nvim_create_autocmd('ColorScheme', {
  group = gruvm,
  pattern = 'gruvbox-material',
  command =
      'hi LineNr                             guibg=#282828  |' ..
      'hi CursorLineNr                       guibg=#282828  |' ..
      'hi IndentBlanklineContextStart        guibg=#504945 gui=nocombine|' ..
      'hi IndentBlanklineContextChar         guifg=#504945 |' ..
      'hi IndentBlanklineChar                guifg=#32302f gui=nocombine |' ..
      -- 'hi IndentBlanklineChar                guifg=#3e4452 gui=nocombine |' ..
      -- 'hi IndentBlanklineContextChar         guifg=#7f848e gui=nocombine |' ..
      'hi ColorColumn                        guibg=#3c3836  |' ..
      -- Original Palette --
      -- 'hi DiagnosticVirtualTextWarn          guifg=#fabd2f guibg=#473c29 |' ..
      -- 'hi DiagnosticVirtualTextHint          guifg=#b8bb26 guibg=#333e34 |' ..
      -- 'hi DiagnosticVirtualTextInfo          guifg=#80aa9e guibg=#2e3b3b |' ..
      'hi DiagnosticVirtualTextError         guifg=#ea6962 guibg=#3c1f1e |' ..
      'hi DiagnosticVirtualTextWarn          guifg=#d8a657 guibg=#473c29 |' ..
      'hi DiagnosticVirtualTextHint          guifg=#a9b665 guibg=#333e34 |' ..
      'hi DiagnosticVirtualTextInfo          guifg=#80aa9e guibg=#2e3b3b |' ..
      'hi LspSagaDiagnosticTextError         guifg=#ea6962 guibg=#3c1f1e |' ..
      'hi LspSagaDiagnosticTextWarn          guifg=#d8a657 guibg=#473c29 |' ..
      'hi LspSagaDiagnosticTextHint          guifg=#a9b665 guibg=#333e34 |' ..
      'hi LspSagaDiagnosticTextInfo          guifg=#80aa9e guibg=#2e3b3b |' ..
      -- 'hi DiagnosticVirtualTextInfo          guifg=#7daea3 guibg=#2e3b3b |' ..
      -- 'hi DiagnosticVirtualTextError         guifg=#db4740 guibg=#3c1f1e |' ..
      -- 'hi DiagnosticVirtualTextWarn          guifg=#e9b143 guibg=#473c29 |' ..
      -- 'hi DiagnosticVirtualTextHint          guifg=#8bba7f guibg=#333e34 |' ..
      'hi NvimTreeNormal                     guibg=#181818 |' ..
      'hi NvimTreeEndOfBuffer                guibg=#181818 |' ..
      'hi NoiceCmdlinePopupBorderCmdline     guifg=#ea6962 guibg=#1d021 |' ..
      -- 'hi TelescopePromptNormal              guifg=#ea6962 guibg=#32302f |' ..
      -- 'hi TelescopePromptNormal              guifg=#ea6962 guibg=#504945 |' ..
      -- 'hi TelescopePromptBorder              guifg=#32302f guibg=#32302f |' ..
      -- 'hi TelescopePromptBorder              guifg=#504945 guibg=#1d2021 |' ..
      -- 'hi TelescopePromptTitle               guifg=#1d2021 guibg=#89b482 |' ..
      -- 'hi TelescopePromptPrefix              guifg=#ea6962 guibg=#32302f |' ..
      -- 'hi TelescopePromptPrefix              guifg=#ea6962 guibg=#504945 |' ..
      -- 'hi TelescopePromptCounter             guifg=#e2cca9 guibg=#504945 |' ..
      -- 'hi TelescopePromptCounter             guifg=#e2cca9 guibg=#32302f |' ..
      -- 'hi TelescopePreviewTitle              guifg=#e2cca9 guibg=#1d2021 |' ..
      -- 'hi TelescopePreviewBorder             guifg=#1d2021 guibg=#1d2021 |' ..
      -- 'hi TelescopePreviewNormal             guifg=#1d2021 guibg=#1d2021 |' ..
      -- 'hi TelescopeResultsTitle              guifg=#80aa9e guibg=#1d2021 |' ..
      -- 'hi TelescopeResultsBorder             guifg=#504945 guibg=#1d2021 |' ..
      -- 'hi TelescopeResultsBorder             guifg=#1d2021 guibg=#1d2021 |' ..
      -- 'hi TelescopeMatching                  guifg=#80aa9e guibg=#282828 |' ..
      -- 'hi TelescopeSelection                 guifg=#f28534 guibg=#32302f |' ..
      'hi FloatBorder                        guifg=#ea6962 guibg=#1d2021 |' ..
      'hi BqfPreviewBorder                   guifg=#ea6962 guibg=#1d2021 |' ..
      'hi NormalFloat                        guibg=#282828 |' ..
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
      -- 'hi CmpItemKindDefault                 guifg=#c678dd |' ..
      -- 'hi CmpItemKindArray                   guifg=#e5c07b |' ..
      -- 'hi CmpItemKindColor                   guifg=#98c379 |' ..
      -- 'hi CmpItemKindConstant                guifg=#cc9057 |' ..
      -- 'hi CmpItemKindConstructor             guifg=#61afef |' ..
      -- 'hi CmpItemKindEnum                    guifg=#c678dd |' ..
      -- 'hi CmpItemKindEnumMember              guifg=#e5c07b |' ..
      -- 'hi CmpItemKindEvent                   guifg=#e5c07b |' ..
      -- 'hi CmpItemKindField                   guifg=#c678dd |' ..
      -- 'hi CmpItemKindFile                    guifg=#61afef |' ..
      -- 'hi CmpItemKindFolder                  guifg=#cc9057 |' ..
      -- 'hi CmpItemKindInterface               guifg=#98c379 |' ..
      -- 'hi CmpItemKindMethod                  guifg=#61afef |' ..
      -- 'hi CmpItemKindModule                  guifg=#cc9057 |' ..
      -- 'hi CmpItemKindOperator                guifg=#e06c75 |' ..
      -- 'hi CmpItemKindProperty                guifg=#56b6c2 |' ..
      -- 'hi CmpItemKindReference               guifg=#cc9057 |' ..
      -- 'hi CmpItemKindSnippet                 guifg=#e06c75 |' ..
      -- 'hi CmpItemKindStruct                  guifg=#c678dd |' ..
      -- 'hi CmpItemKindTypeParameter           guifg=#e06c75 |' ..
      -- 'hi CmpItemKindUnit                    guifg=#abb2bf |' ..
      -- start gruv

      -- 'hi CmpItemKindValue                   guifg=#e2cca9 |' ..
      -- 'hi CmpItemKindClass                   guifg=#d8a657 |' ..
      -- 'hi CmpItemKindText                    guifg=#80aa9e |' ..
      -- 'hi CmpItemKindFunction                guifg=#89b482 |' ..
      -- 'hi CmpItemKindVariable                guifg=#d3869b |' ..
      -- 'hi CmpItemKindKeyword                 guifg=#d8a657  |' ..
      'hi CodewindowBorder                   guifg=#ea6962 |'
  -- 'hi CursorLine                         guibg=#3c3836  |' ..
  -- 'hi CursorLineNr                       guifg=#e9b143  |' ..
  -- 'hi MatchParen                         guifg=#f28534  |' ..
  -- 'hi MatchParen                         guibg=#665c54  |' ..
  -- 'hi DiagnosticVirtualTextHint          guifg=#bf68d9 guibg=#282c34 |' ..
  -- 'hi TelescopePreviewTitle              guifg=#e2cca9 guibg=#1d2021 |' ..
  -- 'hi TelescopePreviewTitle              guifg=#1d2021 guibg=#ea6962 |' ..
  -- 'hi TelescopeResultsTitle              guifg=#e2cca9 guibg=#1d2021 |' ..
  -- 'hi TelescopeResultsTitle              guifg=#1d2021 guibg=#80aa9e |' ..
  -- 'hi TelescopeResultsBorder             guifg=#1d2021 guibg=#1d2021 |' ..
})

local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
end,
}
