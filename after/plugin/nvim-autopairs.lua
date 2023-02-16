local autopairs_status_ok, autopairs = pcall(require, 'nvim-autopairs')
if not autopairs_status_ok then return end

autopairs.setup({
    disable_filetype = { "TelescopePrompt", "vim" },
    check_ts = true,
    ts_config = {
        lua = { 'string' }, -- it will not add a pair on that treesitter node
        javascript = { 'template_string' },
        java = false, -- don't check treesitter on java
    }
})
