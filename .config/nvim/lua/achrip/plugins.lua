return {
  -- Colorscheme
--  {
--    'rithikasilva/sequoia-monochrome.nvim',
--    name = 'sequoia monochrome'
--  }, 
  { 
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = false, 
    priority = 1000,
  },
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
  { 'stevearc/dressing.nvim', 
    opts = {},
  },
  { 
    'stevearc/oil.nvim', 
    ---@module 'oil', 
    ---@type oil.SetupOpts, 
    opts = { }, 
    dependencies = { 
      { 'echasnovski/mini.icons', opts = { } }
    }, 
    lazy = false,
  },
  { 
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
      "folke/snacks.nvim", -- (optional) to show previews
      "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
    },
  },

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
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'L3MON4D3/Luasnip'
      }
  },
  { 'nvim-treesitter/playground' },
}
