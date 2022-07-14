local options = {
-----------------------------------------------------------
-- General
-----------------------------------------------------------
    fileencoding = "utf-8",     -- the encoding written to a file
    mouse = "a",                -- Enable mouse support
    wrap = false,               -- Display lines as one long line
    number = true,              -- Set numbered lines
    numberwidth = 4,            -- Set number column width to 2 {default 4}
    relativenumber = false,      -- Set relative numbered lines
    showmatch = false,          -- When a bracket is inserted, briefly jump to the matching one
    showcmd = false,            -- Disable builtin mode status for bultin status
    backup = false,             -- Don't use backupfile
    writebackup = false,        -- Make a backup before overwriting a file
    swapfile = false,           -- Don't use swapfile
    undofile = true,            -- Enable persistent undo
    confirm = true,             -- Raise dialog asking to save changes 
    clipboard = "unnamedplus",  -- allows neovim to access the system clipboard
    completeopt = { "menuone", "noselect", "noinsert" }, -- For nvim's pop-up menu

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
    termguicolors = true,    -- Use "gui" attributes instead of "cterm" attributes
    showmode = false,        -- Nvim's builtin mode status
    ruler = false,            -- Nvim's builtin statusline Dont show line and column number of the cursor position
    splitbelow = true,       -- Force all horizontal splits to go below current window
    splitright = true,       -- Force all vertical splits to go to the right of current window
    cursorline = true,       -- Highlight the current line
    cursorlineopt = { "line", "number" }, -- Highlight the current line and number
    signcolumn = "yes",      -- Always show the sign column, otherwise it would shift the text each time
    colorcolumn = {80, 120}, -- Highlight column/s
    showtabline = 2,         -- Always show tabs
    conceallevel = 0,        -- So that `` is visible in markdown files
    cmdheight = 1,           -- More space in the neovim cli for displaying messages
    laststatus = 2,          -- Always showstatusline
    scrolloff = 8,           -- Minimal number of screen lines to keep above and below the cursor
    sidescrolloff = 8,       -- Minimal number of screen columns to keep left and right of the cursor
    pumheight = 10,          -- Pop up menu height
  
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
    expandtab = true,        -- Use spaces instead of tabs
    shiftwidth = 4,          -- Shift 4 spaces when tab
    tabstop = 4,             -- 1 tab == 4 spaces
    autoindent = true,       -- Copyindent from current line
    smartindent = true,      -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
    hidden = false,          -- Disable background buffers
    history = 100,           -- Remember N lines in history
    lazyredraw = true,       -- Faster scrolling
    synmaxcol = 240,         -- Max column for syntax highlight
    updatetime = 300,        -- Faster completion (4000ms default)
    timeoutlen = 100,        -- Time to wait for a mapped sequence to complete (in milliseconds)


-----------------------------------------------------------
-- Search
-----------------------------------------------------------
    hlsearch = true,                         -- Highlight all matches on previous search pattern
    ignorecase = true,                       -- Ignore case in search patterns
    smartcase = true,                        -- Override ignorecase if capital is used

}
vim.opt.fillchars.eob=" "

vim.opt.shortmess:append "sI"    -- Shorter Indications for statusline

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.filetype.add({
    extension = {
      conf = "dosini",
  },
})

-- Disable builtins plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
--   "netrw",
--  "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "python3_provider",
   "python_provider",
   "node_provider",
   "ruby_provider",
   "perl_provider",
   "tutor",
   "rplugin",
   "syntax",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

-- https://github.com/ChristianChiarulli/nvim

-- https://github.com/LunarVim/Neovim-from-scratch

-- https://github.com/GideonWolfe/nvim-lua/blob/main/lua/settings.lua

-- https://github.com/brainfucksec/neovim-lua

-- https://github.com/NvChad/NvChad/blob/main/lua/core/options.lua
