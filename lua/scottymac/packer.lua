vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
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
  use {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {}
  end
}
  use 'neanias/everforest-nvim'
  use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  use "rebelot/kanagawa.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'shaunsingh/nord.nvim'
  use 'AckslD/swenv.nvim'
  use 'goolord/alpha-nvim'
  use('nvim-lua/plenary.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use 'theprimeagen/vim-be-good'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'sainnhe/sonokai'
  use 'terrortylor/nvim-comment'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/eslint.nvim'
  use 'luckasRanarison/tailwind-tools.nvim'
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  })
  use('CopilotC-Nvim/CopilotChat.nvim', { dependencies = { {'github/copilot.vim'}, { 'nvim-lua/plenary.nvim'  } } })
end)
