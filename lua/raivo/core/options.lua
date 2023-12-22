local api = vim.api
local opt = vim.opt
local g = vim.g
opt.laststatus = 3
opt.showmode = false

api.nvim_set_hl(0, "Normal", { bg = "none" })
api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

opt.clipboard = "unnamedplus"
opt.cursorline = true
-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

g.mapleader = " "
opt.guicursor = ""

opt.relativenumber = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append "@-@"

vim.o.breakindent = true

vim.o.completeopt = "menuone,noselect"

g.netrw_banner = 0
