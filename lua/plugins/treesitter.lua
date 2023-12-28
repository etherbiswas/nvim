return {
  "nvim-treesitter/nvim-treesitter",
  --event = { "BufReadPre", "BufNewFile" },
  --build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- A list of parser names, or "all"
      ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "ruby", "vim", "python", "css", "scss", "haskell" },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,
      auto_install = true,
      highlight = {
        enable = true,
        disable = {}
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
    })
  end,
}
