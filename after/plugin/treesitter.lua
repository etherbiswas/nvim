local treesitter_status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not treesitter_status_ok then
  return
end

treesitter.setup({
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "ruby", "vim", "python", "css", "scss", "haskell" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "markdown", "html" }
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
})
