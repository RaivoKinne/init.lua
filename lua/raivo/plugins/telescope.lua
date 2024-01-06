return {
  "nvim-telescope/telescope.nvim",
  event = "BufWinEnter",
  config = function()
    local builtin = require "telescope.builtin"
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fw", function()
      builtin.grep_string { search = vim.fn.input "  > Find Word:  " }
    end)
    vim.keymap.set("n", "<leader>ht", builtin.help_tags, {})
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
