require('lazy').setup({
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }

  },

  'jwalton512/vim-blade',

  {
    "rose-pine/neovim",
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
  },

  {
    'nvim-telescope/telescope.nvim',
    event = "BufWinEnter",
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },

  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  'nvim-treesitter/nvim-treesitter-context',

  'nvim-treesitter/playground',

  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },

  'williamboman/mason-lspconfig.nvim',
  -- LSP Support
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
  },

  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim',
      },
    }
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  "tpope/vim-fugitive",

  'ThePrimeagen/harpoon',

  'laytan/cloak.nvim',

  "mbbill/undotree",

  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },

  "folke/zen-mode.nvim",

  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },


  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },

  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
})
