-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ea6962 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#e9b143 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8bba7f gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#80aa9e gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#a3d4c9 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#d3869b gui=nocombine]]
require("indent_blankline").setup {
    vim.g.indent_blankline_use_treesitter_scope,
    -- space_char_blankline = "",
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
    -- char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    --     "IndentBlanklineIndent3",
    --     "IndentBlanklineIndent4",
    --     "IndentBlanklineIndent5",
    --     "IndentBlanklineIndent6",
    -- },
}
