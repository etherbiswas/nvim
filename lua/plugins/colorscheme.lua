return {
  "sainnhe/gruvbox-material",
  -- "joshdick/onedark.vim",
  config = function()
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
      -- neovim
          'hi LineNr                             guibg=#282828  |' ..
          'hi CursorLineNr                       guibg=#282828  |' ..
          'hi ColorColumn                        guibg=#3c3836  |' ..
          -- extensions
          'hi IndentBlanklineContextStart        guibg=#504945 gui=nocombine|' ..
          'hi IndentBlanklineContextChar         guifg=#504945 |' ..
          'hi IndentBlanklineChar                guifg=#32302f gui=nocombine |' ..
          'hi DiagnosticVirtualTextError         guifg=#ea6962 guibg=#3c1f1e |' ..
          'hi DiagnosticVirtualTextWarn          guifg=#d8a657 guibg=#473c29 |' ..
          'hi DiagnosticVirtualTextHint          guifg=#a9b665 guibg=#333e34 |' ..
          'hi DiagnosticVirtualTextInfo          guifg=#80aa9e guibg=#2e3b3b |' ..
          'hi LspSagaDiagnosticTextError         guifg=#ea6962 guibg=#3c1f1e |' ..
          'hi LspSagaDiagnosticTextWarn          guifg=#d8a657 guibg=#473c29 |' ..
          'hi LspSagaDiagnosticTextHint          guifg=#a9b665 guibg=#333e34 |' ..
          'hi LspSagaDiagnosticTextInfo          guifg=#80aa9e guibg=#2e3b3b |' ..
          'hi NvimTreeNormal                     guibg=#181818 |' ..
          'hi NvimTreeEndOfBuffer                guibg=#181818 |' ..
          'hi NoiceCmdlinePopupBorderCmdline     guifg=#ea6962 guibg=#1d021 |' ..
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
          'hi CodewindowBorder                   guifg=#ea6962 |' ..
          'hi RainbowDelimiterYellow             guifg=#ea6962 |' ..
          'hi RainbowDelimiterViolet             guifg=#7daea3 |' ..
          'hi RainbowDelimiterRed                guifg =#e78a4e|' ..
          'hi RainbowDelimiterGreen              guifg =#a9b665|' ..
          'hi RainbowDelimiterBlue               guifg =#d3869b|' ..
          'hi RainbowDelimiterCyan               guifg =#89b482|'
    })

    -- Onedark --
    local onedark = vim.api.nvim_create_augroup('custom_highlights_gruvbox', {})
    vim.api.nvim_create_autocmd('ColorScheme', {
      group = onedark,
      pattern = 'onedark',
      command =
      -- 'hi LineNr                             guibg=#282828  |' ..
      -- 'hi CursorLine                         guibg=#282828  |' ..
      -- 'hi CursorLineNr                       guibg=#282828  |' ..
      -- 'hi DiagnosticVirtualTextError         guifg=#e55561 guibg=#33282f |' ..
          'hi DiagnosticVirtualTextError         guifg=#e86671 guibg=#33282f |' ..
          'hi DiagnosticVirtualTextWarn          guifg=#e2b86b guibg=#333230 |' ..
          'hi DiagnosticVirtualTextInfo          guifg=#48b0bd guibg=#233138 |' ..
          'hi DiagnosticVirtualTextHint          guifg=#bf68d9 guibg=#2f2a3b |' ..
          'hi Visual                             guibg=#323641 |' ..
          'hi Search                             guibg=#61afef |' ..
          'hi IncSearch                          guibg=#e86671 guifg=#282c34 |' ..
          'hi CmpItemKindDefault                 guifg=#c678dd |' ..
          'hi CmpItemKindArray                   guifg=#e5c07b |' ..
          'hi CmpItemKindClass                   guifg=#e5c07b |' ..
          'hi CmpItemKindColor                   guifg=#98c379 |' ..
          'hi CmpItemKindConstant                guifg=#cc9057 |' ..
          'hi CmpItemKindConstructor             guifg=#61afef |' ..
          'hi CmpItemKindEnum                    guifg=#c678dd |' ..
          'hi CmpItemKindEnumMember              guifg=#e5c07b |' ..
          'hi CmpItemKindEvent                   guifg=#e5c07b |' ..
          'hi CmpItemKindField                   guifg=#c678dd |' ..
          'hi CmpItemKindFile                    guifg=#61afef |' ..
          'hi CmpItemKindFolder                  guifg=#cc9057 |' ..
          'hi CmpItemKindFunction                guifg=#61afef |' ..
          'hi CmpItemKindInterface               guifg=#98c379 |' ..
          'hi CmpItemKindKeyword                 guifg=#56b6c2 |' ..
          'hi CmpItemKindMethod                  guifg=#61afef |' ..
          'hi CmpItemKindModule                  guifg=#cc9057 |' ..
          'hi CmpItemKindOperator                guifg=#e06c75 |' ..
          'hi CmpItemKindProperty                guifg=#56b6c2 |' ..
          'hi CmpItemKindReference               guifg=#cc9057 |' ..
          'hi CmpItemKindSnippet                 guifg=#e06c75 |' ..
          'hi CmpItemKindStruct                  guifg=#c678dd |' ..
          'hi CmpItemKindText                    guifg=#abb2bf |' ..
          'hi CmpItemKindTypeParameter           guifg=#e06c75 |' ..
          'hi CmpItemKindUnit                    guifg=#abb2bf |' ..
          'hi CmpItemKindValue                   guifg=#cc9057 |' ..
          'hi CmpItemKindVariable                guifg=#c678dd |' ..
          'hi DiagnosticHint                     guifg=#bf68d9 |' ..
          -- 'hi DiagnosticVirtualTextWarn          guifg=#e5c07b guibg=#333230 |' ..
          -- 'hi DiagnosticVirtualTextHint          guifg=#8bba7f guibg=#333e34 |' ..
          -- 'hi MatchParen                         guifg=#fe8019  |' ..
          -- 'hi NvimTreeNormal                     guibg=#181818 |' ..
          -- 'hi NvimTreeEndOfBuffer                guibg=#181818 |' ..
          -- 'hi TelescopePromptBorder              guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi NoiceCmdlinePopupBorderCmdline     guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePromptNormal              guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePromptBorder              guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePromptTitle               guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePromptPrefix              guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePromptCounter             guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi TelescopePreviewTitle              guifg=#89b482 guibg=#282828 |' ..
          -- 'hi TelescopePreviewBorder             guifg=#89b482 guibg=#282828 |' ..
          -- 'hi TelescopeResultsTitle              guifg=#89b482 guibg=#282828 |' ..
          -- 'hi TelescopeResultsBorder             guifg=#89b482 guibg=#282828 |' ..
          -- 'hi TelescopeMatching                  guifg=#d8a657 guibg=#282828 |' ..
          -- 'hi TelescopeSelection                 guifg=#ffffff guibg=#32302f |' ..
          -- 'hi FloatBorder                        guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi BqfPreviewBorder                   guifg=#ea6962 guibg=#282828 |' ..
          -- 'hi NormalFloat                        guibg=#282828 |' ..
          -- 'hi IndentBlanklineContextChar         guifg=#d3869b |' ..
          -- 'hi markid1                            guifg=#ff8f88 |' ..
          -- 'hi markid2                            guifg=#ffb074 |' ..
          -- 'hi markid3                            guifg=#cfdc8b |' ..
          -- 'hi markid4                            guifg=#a3d4c9 |' ..
          -- 'hi markid5                            guifg=#f9acc1 |' ..
          -- 'hi markid6                            guifg=#afdaa8 |' ..
          -- 'hi markid7                            guifg=#fecc7d |' ..
          -- 'hi markid8                            guifg=#eed8b2 |' ..
          -- 'hi markid9                            guifg=#ffedc7 |' ..
          -- 'hi markid10                           guifg=#cebfaa |' ..
          'hi CodewindowBorder                   guifg=#ea6962 |' ..
          'hi RainbowDelimiterYellow             guifg=#e06c75  |' .. --red
          'hi RainbowDelimiterViolet             guifg=#48b0bd  |' .. --aqua
          'hi RainbowDelimiterRed                guifg =#e5c07b |' .. --orange
          'hi RainbowDelimiterGreen              guifg =#98c379 |' .. -- light green
          'hi RainbowDelimiterBlue               guifg =#c678dd |' .. -- purple
          'hi RainbowDelimiterCyan               guifg =#61afef |'    -- dark green
    })
    local colorscheme = "gruvbox-material"

    local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    if not status_ok then
      vim.notify("colorscheme " .. colorscheme .. " not found!")
      return
    end
  end,
}
