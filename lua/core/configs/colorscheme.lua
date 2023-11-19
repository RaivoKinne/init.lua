require("tokyonight").setup({
  transparent = true, -- Enable this to disable setting the background color
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent",   -- style for floating windows
  },
})

function ColorMyPencils(color)
  color = color or "tokyonight-storm"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
