return {
  "RRethy/vim-illuminate",
  config = function()
    local illuminate = require("illuminate")
    illuminate.configure {
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      delay = 120,
      filetypes_denylist = {
        "dirvish",
        "fugitive",
        "alpha",
        "NvimTree",
        "packer",
        "neogitstatus",
        "Trouble",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "DressingSelect",
        "TelescopePrompt",
      },

      filetypes_allowlist = {},
      modes_denylist = {},
      modes_allowlist = {},
      providers_regex_syntax_denylist = {},
      providers_regex_syntax_allowlist = {},
      under_cursor = true,
    }
  end,
}
