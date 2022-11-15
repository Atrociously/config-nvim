return require('packer').startup(function (use)
    -- Packer managing itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- Tab / Buffer line
    use {
        'akinsho/bufferline.nvim',
        tag = 'v3.*',
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- Pairs
    use 'windwp/nvim-autopairs'

    -- Git info in the vim sign
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }

    -- TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Lsp Setup
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Completions
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
        },
    }

    -- Completions Engine
    use {
        'saadparwaiz1/cmp_luasnip',
        requires = 'L3MON4D3/LuaSnip',
    }

    -- Lsp Diagnostics Window
    use {
        'folke/lsp-trouble.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- Fancy Lsp Stuff
    use {
        'glepnir/lspsaga.nvim',
        branch = "main",
    }

    -- Language specific
    use {
        'simrat39/rust-tools.nvim',
        requires = {
            'mfussenegger/nvim-dap',
            'nvim-lua/plenary.nvim',
        },
    }
end)
