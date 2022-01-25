vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'p00f/nvim-ts-rainbow',
        requires = {
            'nvim-treesitter/nvim-treesitter'
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'folke/tokyonight.nvim'
    use {
        'numToStr/Comment.nvim',
    }
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }
    use 'RRethy/vim-illuminate'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        -- tag = 'release' -- To use the latest release
    }
    use {
        'neovim/nvim-lspconfig',
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
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
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'tpope/vim-surround'
    }
    -- use "lukas-reineke/indent-blankline.nvim"
    use 'kevinhwang91/rnvimr'
    use 'booperlv/nvim-gomove'
    use 'editorconfig/editorconfig-vim'
    use 'mg979/vim-visual-multi'
    use {
        'williamboman/nvim-lsp-installer',
        requires = {
            'neovim/nvim-lspconfig',
        }
    }
    use {
        "ahmedkhalf/project.nvim",
    }
    use {
        'rmagatti/goto-preview',
    }
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }
    use {
        'lewis6991/spellsitter.nvim',
        requires = {
            'nvim-treesitter/nvim-treesitter',
        }
    }
    use 'mfussenegger/nvim-lint'
    use 'tpope/vim-repeat'
    use "b0o/schemastore.nvim"
    use {
        'kdheepak/tabline.nvim',
        requires = {
            {'kyazdani42/nvim-web-devicons', opt = true},
            { 'hoob3rt/lualine.nvim', opt = true }
        }
    }
    use 'windwp/nvim-autopairs'
    use "windwp/nvim-ts-autotag"
    use 'L3MON4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"
    use 'karb94/neoscroll.nvim'
    use {'stevearc/dressing.nvim'}
    use 'romgrk/nvim-treesitter-context'
end)
