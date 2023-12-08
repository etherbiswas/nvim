local fn = vim.fn

-- Automatically install lazy --
-- local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
-- if fn.empty(fn.glob(install_path)) > 0 then
--   PACKER_BOOTSTRAP = fn.system {
--     "git",
--     "clone",
--     "--depth",
--     "1",
--     "https://github.com/wbthomason/packer.nvim",
--     install_path,
--   }
--   print "Installing packer close and reopen Neovim..."
--   vim.cmd [[packadd packer.nvim]]
-- end
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Autocommand that reloads neovim whenever you save the packer_init.lua file --
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost packer_init.lua source <afile> | PackerSync
--   augroup end
-- ]]
--
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
}

-- Install Plugins --
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- packer can manage itself

  use "nvim-lua/popup.nvim"
  use "moll/vim-bbye"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "luochen1990/rainbow"
  use "folke/which-key.nvim"

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Colorscheme
  use "sainnhe/gruvbox-material"
  use 'folke/tokyonight.nvim'
  use 'joshdick/onedark.vim'
  -- use 'navarasu/onedark.nvim'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Bufferline
  use "akinsho/bufferline.nvim"

  -- Git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Terminal
  use "akinsho/toggleterm.nvim"

  -- Code Runner
  use "CRAG666/code_runner.nvim"

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'
  use 'HiPhish/rainbow-delimiters.nvim'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
      'L3MON4D3/LuaSnip',
      'onsails/lspkind-nvim',
      'glepnir/lspsaga.nvim'
    },
  }

  -- LSP
  use {
    "neovim/nvim-lspconfig",
    requires = {
      "jose-elias-alvarez/null-ls.nvim",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim"
    },
  }
  -- Autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Comment
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
  }
  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use 'nvim-treesitter/playground'

  -- Illuminate
  use "RRethy/vim-illuminate"

  -- Dashboard (start screen)
  use 'goolord/alpha-nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
