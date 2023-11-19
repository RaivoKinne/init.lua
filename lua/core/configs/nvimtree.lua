require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
