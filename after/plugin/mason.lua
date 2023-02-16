local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status_ok then
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

local servers = {
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

--[[ local formatters = {
  "prettierd",
} ]]
--[[ local linters = {
  "eslint_d",
} ]]
mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true,
})
