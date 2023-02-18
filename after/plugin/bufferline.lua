local bufferline_status_ok, bufferline = pcall(require, 'bufferline')
if not bufferline_status_ok then
  return
end

bufferline.setup({
  options = {
    mode = "tabs",
    --    numbers = "buffer_id",
    diagnostics = "false",
    --diagnostics = false | "nvim_lsp" | "coc",
    diagnostics_update_in_insert = false,
    --[[diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "(" .. count .. ")"
    end,]]
    --- count is an integer representing total count of errors
    --- level is a string "error" | "warning"
    --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
    --- this should return a string
    --- Don't get too fancy as this function will be executed a lot
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon
    end,
    color_icons = true,
    show_close_icon = true,
    show_buffer_close_icons = true,
    always_show_bufferline = true,
    separator_style = "thin"
    --separator_style = "slant" | "thick" | "thin" | {"any", "any"},
  },
  -- Gruvbox material --
  --   highlights = {
  --     fill = {
  --       bg = '#282828'
  --     },
  --     separator = {
  --       fg = '#282828',
  --       bg = '#151818',
  --     },
  --     separator_selected = {
  --       fg = '#282828',
  --     }
  --   },
  -- })

  -- Onedark --
  highlights = {
    fill = {
      bg = '#21252b'
    },
    separator = {
      fg = '#2c323c',
      bg = '#21252b',
    },
    separator_selected = {
      fg = '#2c323c',
      -- bg = '#21252b'
    },
    background = {
      fg = '#404754',
      bg = '#21252b'
    },
  },
})

--nnoremap <silent> gb :BufferLinePick<CR>
vim.api.nvim_set_keymap("n", "gb", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
