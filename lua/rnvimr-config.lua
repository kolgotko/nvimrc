vim.cmd([[
    tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
    nnoremap <silent> <M-o> :RnvimrToggle<CR>
    tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

    let g:rnvimr_enable_picker = 1
    let g:rnvimr_draw_border = 1
    let g:rnvimr_enable_bw = 1
    let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set column_ratios 1,1']
    let g:rnvimr_edit_cmd = 'drop'
]])
