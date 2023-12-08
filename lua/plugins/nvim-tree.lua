return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")

    nvimtree.setup({
      disable_netrw = true,
      hijack_netrw = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      renderer = {
        root_folder_modifier = ":t",
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "M",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = " ",
          info = " ",
          warning = " ",
          error = " ",
        },
      },
      view = {
        width = 30,
        side = "left",
        number = false
      },
    })

    local function open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- pcall nvim tree api
  local treeapi_status_ok, treeapi = pcall(require, 'nvim-tree.api')
  if not treeapi_status_ok then
    return
  end

  -- open the tree
  treeapi.tree.open()
end

--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

  end
}
