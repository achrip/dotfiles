return {
  -- Colorscheme
  --  {
  --    'rithikasilva/sequoia-monochrome.nvim',
  --    name = 'sequoia monochrome'
  --  },
  {
    'morhetz/gruvbox'
  },
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
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },
  { 'folke/zen-mode.nvim' },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil',
    ---@type oil.SetupOpts,
    opts = {},
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} }
    },
    lazy = false,
  },
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {}
  },
  {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
      "folke/snacks.nvim",               -- (optional) to show previews
      "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
    },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
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
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },
  { 'nvim-treesitter/playground' },
}
