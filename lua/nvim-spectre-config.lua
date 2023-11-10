require('spectre').setup()

vim.cmd([[
    command Spectre :lua require('spectre').open()<CR>
    command SpectreVisual :lua require('spectre').open_visual()<CR>
]])
