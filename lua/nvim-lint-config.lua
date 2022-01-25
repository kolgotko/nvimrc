require('lint').linters_by_ft = {
    typescript = {'eslint'},
}

vim.cmd([[
    au BufWritePost <buffer> lua require('lint').try_lint()
    au TextChanged <buffer> lua require('lint').try_lint()
    au InsertLeave <buffer> lua require('lint').try_lint()
]])
