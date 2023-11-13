local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<A-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<A-a>", function () ui.nav_prev() end)
vim.keymap.set("n", "<A-d>", function () ui.nav_next() end)
