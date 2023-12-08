local blankline_status_ok, blankline = pcall(require, 'ibl')
if not blankline_status_ok then
  return
end

blankline.setup()
-- Gruvbox material --
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ea6962 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#e9b143 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8bba7f gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#80aa9e gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#a3d4c9 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#d3869b gui=nocombine]]

-- Onedark --
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#e06c75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#e5c07b gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98c379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#61afef gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#56b6c2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#c678dd gui=nocombine]]

-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"

--blankline.setup {
-- space_char_blankline = " ",
--show_trailing_blankline_indent = false,
-- show_first_indent_level = true,
--show_current_context = true,
--show_current_context_start = true,
-- char_highlight_list = {
--   "IndentBlanklineIndent1",
--   "IndentBlanklineIndent2",
--   "IndentBlanklineIndent3",
--   "IndentBlanklineIndent4",
--   "IndentBlanklineIndent5",
--   "IndentBlanklineIndent6",
-- },
--}

-- vim.cmd [[highlight IndentBlanklineContextStart guibg=#3e4452 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#3e4452 gui=nocombine]]
