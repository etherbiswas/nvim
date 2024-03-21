return {
  "nvimtools/none-ls.nvim", -- configure formatters & linters
  --"jose-elias-alvarez/null-ls.nvim",
  lazy = true,
  -- event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
  dependencies = {
    "jay-babu/mason-null-ls.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    local lsp_formatting = function(bufnr)
      vim.lsp.buf.format({
        filter = function(client)
          return client.name == "null-ls"
        end,
        bufnr = bufnr,
      })
    end

    null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.fish_indent,
          null_ls.builtins.diagnostics.fish,
          null_ls.builtins.diagnostics.tidy
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                lsp_formatting(bufnr)
              end,
            })
          end
        end
      },

      vim.api.nvim_create_user_command(
        'DisableLspFormatting',
        function()
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
        end,
        { nargs = 0 }
      ))
  end,
}
