return {
  -- Colorscheme
--  {
--    'rithikasilva/sequoia-monochrome.nvim',
--    name = 'sequoia monochrome'
--  }, 
  {
    'Hiroya-W/sequoia-moonlight.nvim', 
    name = 'sequoia moonlight'
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000
  },
  {
    'rose-pine/neovim', 
    name = 'rose-pine'
  },

  -- Other
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim'}
  },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' } ,
  { 'folke/zen-mode.nvim' },

  -- LSP and highlighting 
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', 
  },
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
  { 'nvim-treesitter/playground' },
}
