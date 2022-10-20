return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'

    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig"
    }

    use {
        "OmniSharp/omnisharp-vim"
    }

    use 'Hoffs/omnisharp-extended-lsp.nvim'

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    -- LSP Section lifted from ThePrimeagen
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("saadparwaiz1/cmp_luasnip")
    -- use {"tzachar/cmp-tabnine", run = './install.sh', requires = 'hrsh7th/nvim-cmp' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- Color
    use 'folke/tokyonight.nvim'
    use 'sainnhe/gruvbox-material'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', 
    requires = {'nvim-lua/plenary.nvim'} }



end)
