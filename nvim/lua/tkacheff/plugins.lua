return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    use 'EdenEast/nightfox.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'ishan9299/nvim-solarized-lua'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'nvim-treesitter/nvim-treesitter'

    use 'onsails/lspkind.nvim'
    use 'mfussenegger/nvim-jdtls'
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    -- use 'crispgm/nvim-go'
    use 'j-hui/fidget.nvim'
    use 'stevearc/aerial.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'

    use 'akinsho/bufferline.nvim'
    use 'famiu/bufdelete.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({})
        end
    }
    use 'stevearc/dressing.nvim'
    use 'goolord/alpha-nvim'
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'

    -- Git ------------------------
    use 'lewis6991/gitsigns.nvim'
    -------------------------------

    use 'ggandor/leap.nvim'

    use 's1n7ax/nvim-window-picker'
    use { "anuvyklack/windows.nvim",
        requires = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim"
        },
        config = function()
            vim.o.winwidth = 8
            vim.o.winminwidth = 8
            vim.o.equalalways = false
            require('windows').setup()
        end
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use { "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" } }

    use {
        'folke/zen-mode.nvim',
        config = function()
            require("zen-mode").setup {}
        end
    }

    use 'akinsho/toggleterm.nvim'

end)
