return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require "harpoon"

    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end)
    vim.keymap.set("n", "<A-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<A-d>", function()
      harpoon:list():next()
    end)
    vim.keymap.set("n", "<A-a>", function()
      harpoon:list():prev()
    end)
  end,
}
