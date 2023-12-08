return {
  "norcalli/nvim-colorizer.lua",
  --event = { "BufReadPre", "BufNewFile" },
  config = function()
    local colorizer = require("colorizer")
    vim.cmd [[set termguicolors]]
    colorizer.setup({
      '*',
    })
  end,
}
--local colorizer = require("colorizer")
--vim.cmd[[set termguicolors]]
--colorizer.setup({
--'*',
--})
