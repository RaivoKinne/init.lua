return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup {
      --- @usage 'auto'|'main'|'moon'|'dawn'
      variant = "auto",
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
    }
  end,
  init = function()
    vim.cmd "colorscheme rose-pine"
  end,
}
