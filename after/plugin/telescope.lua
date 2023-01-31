local telescope_status_ok, telescope = pcall(require, 'telescope')
if not telescope_status_ok then
  return
end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

-- set telescope cwd
if vim.fn.isdirectory(vim.v.argv[2]) == 1 then
  vim.api.nvim_set_current_dir(vim.v.argv[2])
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    prompt_prefix = "  ",
    selection_caret = " ",
    mappings = {
      -- your custom insert mode mappings
      ["i"] = {
        ["<C-w>"] = function() vim.cmd('normal vbd') end,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
      },
      ["n"] = {
        -- your custom normal mode mappings
        ["q"] = actions.close,
        ["N"] = fb_actions.create,
        ["h"] = fb_actions.goto_parent_dir,
        ["/"] = function()
          vim.cmd('startinsert')
        end
      },
    },
  },

  extensions = {
    file_browser = {
      theme = "ivy",
      -- theme = "dropdown",
      layout_config = { height = 100 },
      hidden = true,
      initial_mode = "normal",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      respect_gitignore = false,
      hidden = false,
      grouped = true,
      gitstatus = true,
    })
  end)
vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', ';;', function()
  builtin.resume()
end)
vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    gitstatus = true,
    initial_mode = "normal",
    layout_strategy = "horizontal",
    layout_config = { height = 30, width = 0.65 }
  })
end)
