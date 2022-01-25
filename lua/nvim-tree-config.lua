require('nvim-tree').setup({
    open_on_setup = false,
    open_on_tab = false,
    hijack_cursor = true,
    auto_close = true,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
    },
})

vim.cmd([[
    nnoremap <silent> <M-t> :NvimTreeToggle<CR>
]])
