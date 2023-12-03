return {
    "folke/zen-mode.nvim",
    config = function()
        vim.keymap.set("n", "<A-z>", function()
            require("zen-mode").setup {
                window = {
                    width = 100,
                    options = {}
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = true
            vim.wo.number = true
            vim.wo.rnu = true
            require('staline').setup()
        end)


        vim.keymap.set("n", "<A-Z>", function()
            require("zen-mode").setup {
                window = {
                    width = 100,
                    options = {}
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = true
            vim.wo.number = false
            vim.wo.rnu = false
        end)
    end
}
