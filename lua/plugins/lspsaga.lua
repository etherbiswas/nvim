return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-tree/nvim-web-devicons",    -- optional
    "nvim-treesitter/nvim-treesitter" -- optional
  },
  config = function()
    local saga = require("lspsaga")

    saga.setup({
      ui = {
        title = false,
        border = 'solid',
        winblend = 0,
        expand = '',
        collapse = '',
        code_action = '󰌵',
        incoming = '󰏷 ',
        outgoing = '󰏻 ',
        kind = {
          -- File = { '󰈙', '@comment' },
          -- Folder = { ' ', '@comment' },
        },
      },
      diagnostic = {
        on_insert = true,
        on_insert_follow = true,
        insert_winblend = 0,
        show_code_action = true,
        show_source = true,
        jump_num_shortcut = false,
        --1 is max
        max_width = 1,
        custom_fix = nil,
        custom_msg = nil,
        text_hl_follow = true,
        border_follow = true,
        keys = {
          exec_action = 'o',
          quit = 'q',
          go_action = 'g',
        },
      },
      code_action = {
        num_shortcut = true,
        keys = {
          quit = 'q',
          exec = '<CR>',
        },
      },
      lightbulb = {
        enable = true,
        enable_in_insert = true,
        -- cache_code_action = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      preview = {
        lines_above = 0,
        lines_below = 10,
      },
      scroll_preview = {
        scroll_down = '<C-f>',
        scroll_up = '<C-b>',
      },
      request_timeout = 2000,
      finder = {
        edit = { 'o', '<CR>' },
        vsplit = 's',
        split = 'i',
        tabe = 't',
        quit = { 'q', '<ESC>' },
      },
      definition = {
        edit = '<C-c>o',
        vsplit = '<C-c>v',
        split = '<C-c>i',
        tabe = '<C-c>t',
        quit = 'q',
        close = '<Esc>',
      },
      rename = {
        quit = '<C-c>',
        exec = '<CR>',
        mark = 'x',
        confirm = '<CR>',
        in_select = true,
        whole_project = true,
      },
      symbol_in_winbar = {
        enable = true,
        -- separator = ' > ',
        separator = '  ',
        show_file = true,
        --respect_root = true,
        folder_level = 2,
        in_custom = true,
        hide_keyword = true,
        color_mode = false,
      },
      outline = {
        win_position = 'right',
        win_with = '',
        win_width = 30,
        show_detail = true,
        auto_preview = true,
        auto_refresh = true,
        auto_close = true,
        custom_sort = nil,
        keys = {
          jump = 'o',
          expand_collapse = 'u',
          quit = 'q',
        },
      },
      callhierarchy = {
        show_detail = false,
        keys = {
          edit = 'e',
          vsplit = 's',
          split = 'i',
          tabe = 't',
          jump = 'o',
          quit = 'q',
          expand_collapse = 'u',
        },
      },
      server_filetype_map = {
        typescript = 'typescript'
      },
    })

    -- Gruvbox material --
    vim.cmd([[highlight SagaWinbarSep gui=NONE, guifg=#7c6f64]])
    -- vim.cmd([[highlight SagaWinbarVariable gui=NONE, guifg=#d3869b]])
    -- vim.cmd([[highlight SagaWinbarFolderName gui=NONE, guifg=#e2cca9]])
    -- vim.cmd([[highlight SagaWinbarFolder gui=NONE, guifg=#8bba7f]])
    -- vim.cmd([[highlight SagaWinbarFilename gui=NONE, guifg=#7c6f64]])

    -- OneDark --
    -- vim.cmd([[highlight SagaWinbarSep gui=NONE, guifg=#abb2bf]])
    -- vim.cmd([[highlight SagaWinbarFile gui=NONE, guifg=#abb2bf]])
    -- vim.cmd([[highlight SagaWinbarFolderName gui=NONE, guifg=#abb2bf]])
    -- vim.cmd([[highlight SagaWinbarWord gui=NONE, guifg=#abb2bf]])

    -- Link lspsaga colours to cmp
    vim.api.nvim_set_hl(0, 'CmpItemKindArray', { link = 'SagaArray' })
    vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { link = 'SagaConstant' })
    vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { link = 'SagaConstructor' })
    vim.api.nvim_set_hl(0, 'CmpItemKindEnum', { link = 'SagaEnum' })
    vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', { link = 'SagaEnumMember' })
    vim.api.nvim_set_hl(0, 'CmpItemKindEvent', { link = 'SagaEvent' })
    vim.api.nvim_set_hl(0, 'CmpItemKindField', { link = 'SagaField' })
    vim.api.nvim_set_hl(0, 'CmpItemKindFile', { link = 'SagaFile' })
    vim.api.nvim_set_hl(0, 'CmpItemKindFolder', { link = 'SagaFolder' })
    vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'SagaInterface' })
    vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'SagaMethod' })
    vim.api.nvim_set_hl(0, 'CmpItemKindModule', { link = 'SagaModule' })
    vim.api.nvim_set_hl(0, 'CmpItemKindOperator', { link = 'SagaOperator' })
    vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'SagaProperty' })
    vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { link = 'SagaClass' })
    vim.api.nvim_set_hl(0, 'CmpItemKindStruct', { link = 'SagaStruct' })
    vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', { link = 'SagaTypeParameter' })
    vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'SagaUnit' })
    vim.api.nvim_set_hl(0, 'CmpItemKindValue', { link = 'SagaValue' })
    vim.api.nvim_set_hl(0, 'CmpItemKindClass', { link = 'SagaClass' })
    vim.api.nvim_set_hl(0, 'CmpItemKindValue', { link = 'SagaValue' })
    vim.api.nvim_set_hl(0, 'CmpItemKindClass', { link = 'SagaClass' })
    vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'SagaText' })
    vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { link = 'SagaFunction' })
    vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { link = 'SagaVariable' })
    vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { link = 'SagaObject' })

    -- Link lspsaga colours to rainbow delimiter
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { link = 'SagaArray' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { link = 'SagaConstant' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { link = 'SagaConstructor' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { link = 'SagaValue' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { link = 'SagaEnumMember' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { link = 'SagaEvent' })
    -- vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { link = 'SagaField' })

    vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#ea6962' })
    --vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#d8a657' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#7daea3' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#e78a4e' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#a9b665' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#d3869b' })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#89b482' })
  end
}
