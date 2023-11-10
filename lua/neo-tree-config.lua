require("neo-tree").setup({
    window = {
        position = 'float'
    },
    filesystem = {
        follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
        }
    }
})
require("lsp-file-operations").setup({})
