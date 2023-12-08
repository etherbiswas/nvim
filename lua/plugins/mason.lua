return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_null_ls = require("mason-null-ls")

    mason.setup({
      PATH = "prepend", -- "skip" seems to cause the spawning error
      ui = {
        border = "none",
        icons = {
          package_installed = "◍",
          package_pending = "◍",
          package_uninstalled = "◍",
        },
      },
      log_level = vim.log.levels.INFO,
      max_concurrent_installers = 4,
    })

    local lspconfig = {
      "clangd",
      "cssls",
      "tailwindcss",
      "html",
      "dockerls",
      "tsserver",
      "lua_ls",
      "pyright",
      "bashls",
      "jsonls",
      "yamlls",
      "intelephense",
    }

    local null_ls = {
      "prettierd",
      "eslint_d",
    }

    mason_lspconfig.setup({
      ensure_installed = lspconfig,
      automatic_installation = true,
    })

    mason_null_ls.setup({
      ensure_installed = null_ls,
      automatic_installation = true,
    })
  end,
}
