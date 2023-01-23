local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

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

-- Install Plugins
return packer.startup(function(use)
  -- Add your plugins here:
  use "wbthomason/packer.nvim" -- packer can manage itself

  use "nvim-lua/popup.nvim"
  use "moll/vim-bbye"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "luochen1990/rainbow" -- Color Tags in html
  use "folke/which-key.nvim"

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Colorscheme
  use "sainnhe/gruvbox-material"
  use "ellisonleao/gruvbox.nvim"
  use 'folke/tokyonight.nvim'

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Bufferline
  use "akinsho/bufferline.nvim"

  -- Comments
  use { "numToStr/Comment.nvim",
    requires = {
      "JoosepAlviste/nvim-ts-context-commentstring"
    }
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Terminal
  use "akinsho/toggleterm.nvim"

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

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
      'glepnir/lspsaga.nvim' -- LSP UIs
    },
  }

  -- LSP
  use {
    "neovim/nvim-lspconfig",
    requires = {
      "jose-elias-alvarez/null-ls.nvim",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  }
  -- Autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- Illuminate
  use "RRethy/vim-illuminate"

  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
