return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup {
      disable_italics = true,
      disable_background = true,
      disable_float_background = true,
    }
  end,
  init = function()
    vim.cmd "colorscheme rose-pine"
  end,
}
