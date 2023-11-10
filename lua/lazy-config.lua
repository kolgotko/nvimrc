local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",
    'nvim-tree/nvim-web-devicons',
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons', lazy = true}
    },
    'folke/tokyonight.nvim',
    'numToStr/Comment.nvim',
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
    },
    'RRethy/vim-illuminate',
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    },
    'neovim/nvim-lspconfig',
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            'neovim/nvim-lspconfig',
        }
    },
    'mfussenegger/nvim-dap',
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'petertriho/cmp-git',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-buffer',
            'lukas-reineke/cmp-rg',

            -- snippets engine
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
    },
    "b0o/schemastore.nvim",
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    'kylechui/nvim-surround',
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },
    'kevinhwang91/rnvimr',
    'booperlv/nvim-gomove',
    'mg979/vim-visual-multi',
    {
        'rmagatti/goto-preview',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },
    'tpope/vim-repeat',
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    'windwp/nvim-autopairs',
    "windwp/nvim-ts-autotag",
    'L3MON4D3/LuaSnip',
    "rafamadriz/friendly-snippets",
    'karb94/neoscroll.nvim',
    {'stevearc/dressing.nvim'},
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        event = "LspAttach",
    },
    {
        'phaazon/hop.nvim',
        branch = 'v1.2', -- optional but strongly recommended
    },
    {
        'NvChad/nvim-colorizer.lua'
    },
    'danymat/neogen',
    'dyng/ctrlsf.vim',
    {
        'numtostr/BufOnly.nvim',
        cmd = 'BufOnly'
    },
    {
        'stevearc/aerial.nvim',
    },
    {
        "pmizio/typescript-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "neovim/nvim-lspconfig",
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },
    {
        'antosha417/nvim-lsp-file-operations',
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-neo-tree/neo-tree.nvim",
        }
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
})
