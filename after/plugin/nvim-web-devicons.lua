local devicons_status_ok, devicons = pcall(require, 'nvim-web-devicons')
if not devicons_status_ok then
  return
end


devicons.setup {
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true
}
devicons.set_icon {
  ["js"] = {
    icon = "",
    color = "#efd81d",
    cterm_color = "220",
    name = "Js",
  },
  ["json"] = {
    icon = "ﬥ",
    color = "#cbcb41",
    cterm_color = "185",
    name = "Json",
  },
  ["json5"] = {
    icon = "",
    color = "#cbcb41",
    cterm_color = "185",
    name = "Json5",
  },
}
