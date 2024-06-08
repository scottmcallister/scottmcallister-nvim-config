-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use 'neanias/everforest-nvim'
  use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  use "rebelot/kanagawa.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'shaunsingh/nord.nvim'
  use 'goolord/alpha-nvim'
  use('nvim-lua/plenary.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use('CopilotC-Nvim/CopilotChat.nvim', { dependencies = { {'github/copilot.vim'}, { 'nvim-lua/plenary.nvim'  } } })
end)
