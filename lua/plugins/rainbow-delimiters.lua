return {
  "HiPhish/rainbow-delimiters.nvim",
  --event = { "BufReadPre", "BufNewFile" },
  config = function()
    local rainbow = require("rainbow-delimiters.setup")

    rainbow.setup {
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
    }

    --[[ local highlight = {
	  "RainbowRed",
	  "RainbowYellow",
	  "RainbowBlue",
	  "RainbowOrange",
	  "RainbowGreen",
	  "RainbowViolet",
	  "RainbowCyan",
	}

	local hooks = require "ibl.hooks"
	-- create the highlight groups in the highlight setup hook, so they are reset
	-- every time the colorscheme changes
	hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	  vim.api.nvim_set_hl(0, 'RainbowRed', { link = 'RainbowDelimiterRed' })
	  vim.api.nvim_set_hl(0, 'RainbowYellow', { link = 'RainbowDelimiterYellow' })
	  vim.api.nvim_set_hl(0, 'RainbowBlue', { link = 'RainbowDelimiterBlue' })
	  vim.api.nvim_set_hl(0, 'RainbowOrange', { link = 'RainbowDelimiterOrange' })
	  vim.api.nvim_set_hl(0, 'RainbowGreen', { link = 'RainbowDelimiterGreen' })
	  vim.api.nvim_set_hl(0, 'RainbowViolet', { link = 'RainbowDelimiterViolet' })
	  vim.api.nvim_set_hl(0, 'RainbowCyan', { link = 'RainbowDelimiterCyan' })
	end)

	require("ibl").setup { indent = { highlight = highlight } } ]]

    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#ea6962' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#7daea3' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#e78a4e' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#a9b665' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#d3869b' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#89b482' })
  end,
}
