vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>rp", ":%s/")

vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft)
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight)
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown)
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp)

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd "so"
end)
