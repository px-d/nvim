vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.swapfile = false
vim.g.mapleader = " "
vim.opt.winborder = "rounded"
vim.opt.signcolumn = "yes"
vim.opt.matchpairs = { "(:)", "[:]", "{:}", "<:>" }

require("vague").setup({ transparent = false })
vim.cmd("colorscheme vague")
