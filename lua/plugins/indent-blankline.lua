return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local blankline = require("ibl")
    blankline.setup()
  end,
}
