return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim'}
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', 
    config = function(_, opts)
      local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

      parser_config.blade = {
        install_info = {
          url = 'https://github.com/EmranMR/tree-sitter-blade',
          files = {
            'src/parser.c',
            -- 'src/scanner.cc',
          },
          branch = 'main',
          generate_requires_npm = true,
          requires_generate_from_grammar = true,
        },
        filetype = 'blade',
      }

      require('nvim-treesitter.configs').setup(opts)
    end
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
--  {
--    'rithikasilva/sequoia-monochrome.nvim',
--    name = "sequoia monochrome"
--  }, 
  {
    'Hiroya-W/sequoia-moonlight.nvim', 
    name = 'sequoia moonlight'
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  { 'folke/zen-mode.nvim' },
  {
    'quarto-dev/quarto-nvim', 
    dependencies = { 
      'jmbuhr/otter.nvim', 
    }
  }
}
