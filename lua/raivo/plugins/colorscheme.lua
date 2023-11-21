return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      variant = 'auto',
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
    })
  end,

  -- optionally set the colorscheme within lazy config
  init = function()
    vim.cmd("colorscheme rose-pine")
  end
}
