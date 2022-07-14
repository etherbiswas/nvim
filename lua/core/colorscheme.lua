-----------------------------------------------------------
-- Gruvbox-Material                                      --
-----------------------------------------------------------
vim.g.gruvbox_material_disable_italic_comment = '0'
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_visual = 'reverse'
vim.g.gruvbox_material_statusline_style = 'default'
vim.g.gruvbox_material_better_performance = '1'
vim.g.gruvbox_material_transparent_background = "0"

local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
