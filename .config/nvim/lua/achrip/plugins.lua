return {
  'wbthomason/packer.nvim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim'}
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  'nvim-treesitter/playground',
  'mbbill/undotree',
  'tpope/vim-fugitive',

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {

      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'L3MON4D3/Luasnip'

      }
  },

    'rebelot/kanagawa.nvim',
    'rithikasilva/sequoia-monochrome.nvim',
    'kdheepak/monochrome.nvim',
    'cranberry-clockworks/coal.nvim',
  {
    'folke/tokyonight.nvim',
    lazy = true,
    opts = { style = 'moon' },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  { 'folke/zen-mode.nvim' },
}
