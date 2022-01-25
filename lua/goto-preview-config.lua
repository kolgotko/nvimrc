require('goto-preview').setup {
    bufhidden = "hide",
    post_open_hook = function(buffer, window)
        vim.api.nvim_buf_call(
            buffer,
            function()
                vim.cmd('set buflisted')
            end
        )
    end
}

local map = vim.api.nvim_set_keymap;

map("n", "<leader>gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap=true })
map("n", "<leader>gi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap=true })
map("n", "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap=true })
map("n", "<leader>gr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap=true })
