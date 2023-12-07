return {
  "ray-x/web-tools.nvim",
  config = function()
    require("web-tools").setup {
      keymaps = {
        rename = nil, -- by default use same setup of lspconfig
        repeat_rename = ".", -- . to repeat
      },
      hurl = { -- hurl default
        show_headers = false, -- do not show http headers
        floating = false, -- use floating windows (need guihua.lua)
        json5 = false, -- use json5 parser require json5 treesitter
        formatters = { -- format the result by filetype
          json = { "jq" },
          html = { "prettier", "--parser", "html" },
        },
      },
    }

    vim.keymap.set("n", "<leader>bo", vim.cmd.BrowserOpen)
    vim.keymap.set("n", "<leader>br", vim.cmd.BrowserRestart)
    vim.keymap.set("n", "<leader>bd", vim.cmd.BrowserStop)
    vim.keymap.set("n", "<leader>bs", vim.cmd.BrowserSync)
  end,
}
