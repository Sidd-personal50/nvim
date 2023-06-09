-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        use("nvim-telescope", "telescope.nvim"),
        use("nvim-telescope", "telescope-rs.nvim"),
        use("nvim-telescope", "telescope-fzf-writer.nvim"),
        use("nvim-telescope", "telescope-packer.nvim"),
        use("nvim-telescope", "telescope-fzy-native.nvim"),
        use("nvim-telescope", "telescope-github.nvim"),
        use("nvim-telescope", "telescope-symbols.nvim"),

        use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        use { "nvim-telescope/telescope-hop.nvim" },
        use { "nvim-telescope/telescope-file-browser.nvim" },
        use { "nvim-telescope/telescope-ui-select.nvim" },
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use('folke/tokyonight.nvim')
    use('jacoborus/tender.vim')
    use('bluz71/vim-nightfly-colors')
    use('bluz71/vim-moonfly-colors')
    use('catppuccin/nvim')

    use "kyazdani42/nvim-web-devicons"
    use "yamatsum/nvim-web-nonicons"
    use "mkitt/tabline.vim"
    use "NvChad/nvim-colorizer.lua"



    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon') use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use("folke/zen-mode.nvim")
    --use("github/copilot.vim")

end)
