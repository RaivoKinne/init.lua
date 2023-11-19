require 'nvim-treesitter.configs'.setup {
  ensure_installed = 'all',
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = {
      -- "python",
      -- "html",
      -- "javascript",
      -- "php",
    }
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false
  },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
  },
  refactor = {
    highlight_definitions = { enable = true }
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade"
}

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})
