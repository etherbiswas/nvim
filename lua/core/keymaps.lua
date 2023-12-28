local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--Remap space as leader key
vim.g.mapleader = "<Space>"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
map("n", "j", "gj")
map("n", "k", "gk")
map("n", "gh", "^")
map("n", "gl", "$")
map("n", "<C-j>", "2gj")
map("n", "<C-k>", "2gk")
map("n", "<C-a>", "ggVG")
map("n", "<C-q>", ":q!<CR>")
map("n", "<A-q>", ":qa!<CR>")

-- File write/edit options
map("n", "<C-x>", ":wq!<CR>")
map("n", "<C-s>", ":w!<CR>")

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigate tabs
map("n", "<S-l>", ":tabnext<CR>")
map("n", "<S-h>", ":tabprevious<CR>")

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>")
map("n", "<A-k>", "<Esc>:m .-2<CR>")
map("n", "<C-l>", "mzyyp`z")

-- Insert --
-- Better insert mode navigation
map("i", "<C-k>", "<up>")
map("i", "<C-j>", "<down>")
map("i", "<C-h>", "<left>")
map("i", "<C-l>", "<right>")

-- File write/Edit options
map("i", "<C-d>", "<BS>")
map("i", "<C-a>", "<Esc>ggVG")
map("i", "<C-x>", "<Esc>:wq!<CR>")
map("i", "<C-q>", "<Esc>:q!<CR>")
map("i", "<C-s>", "<Esc>:w!<CR>")

-- Press jk fast to enter
map("i", "jk", "<ESC>")

-- Common --
-- Extensions
map("n", "<C-b>", ":NvimTreeToggle<CR>")
map("i", "<C-b>", "<Esc>:NvimTreeToggle<CR>")
map("n", "<C-m>", ":RunFile<CR>")

-- Visual --
map("v", "j", "gj")
map("v", "k", "gk")
map("v", "gh", "^")
map("v", "gl", "$")
map("v", "<C-j>", "2gj")
map("v", "<C-k>", "2gk")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")
map("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")
