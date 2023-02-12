local lualine_status_ok, lualine = pcall(require, 'lualine')
if not lualine_status_ok then
  return
end

local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diff = {
    "diff",
    colored = true,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = hide_in_width
}

lualine.setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        -- component_separators = { left = '', right = '' },
        section_separators = { left = ' ', right = ' ' },
        -- section_separators = { left = '', right = '' },
        disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
        statusline = {},
        winbar = {},
        ignore_focus = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', diff, 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { spaces, 'encoding', 'fileformat', 'filetype' },
        lualine_y = {},
        lualine_z = { progress }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
})
vim.cmd([[highlight lualine_a_command gui=bold, guibg=#56b6c2]])
