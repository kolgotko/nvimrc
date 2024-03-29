vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.syntax = 'ON'
vim.opt.termguicolors = true
vim.opt.keymap = 'russian-jcukenwin'
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.colorcolumn = '80,120'
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.mouse = 'nv'
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.undofile = true
vim.opt.pumblend = 15
vim.opt.laststatus = 3
-- vim.opt.spell = true
vim.opt.spelllang = {'en_us', 'ru_ru'}
vim.opt.spelloptions = {'camel'}

vim.opt.listchars:append("eol:¬")
vim.opt.listchars:append("tab:▸ ")
vim.opt.listchars:append("trail:·")

vim.opt.list = true

vim.diagnostic.config({
    virtual_text = false,
})

vim.cmd([[
    nmap <silent> <leader>nh :noh<CR>
]])

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', ':bprevious<CR>', opts)
map('n', '<A-.>', ':bnext<CR>', opts)

map('n', '<C-,>', 'tabm -1<CR>', opts)
map('n', '<C-.>', 'tabm +1<CR>', opts)
map('n', '<^-,>', 'tabm -1<CR>', opts)
map('n', '<^-.>', 'tabm +1<CR>', opts)
map('n', '<C-Up>', 'tabm -1<CR>', opts)
map('n', '<C-Down>', 'tabm +1<CR>', opts)
map('n', '<A-Left>', 'tabm -1<CR>', opts)
map('n', '<A-Right>', 'tabm +1<CR>', opts)
