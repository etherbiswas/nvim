local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status_ok then
  return
end

local mason_null_ls_status_ok, mason_null_ls = pcall(require, 'mason-null-ls')
if not mason_null_ls_status_ok then
  return
end

mason.setup({
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
