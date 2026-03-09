vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.swapfile = false
vim.g.mapleader = " "
vim.opt.winborder = "rounded"
vim.opt.scrolloff = 7
vim.opt.signcolumn = "yes"
vim.opt.matchpairs = { "(:)", "[:]", "{:}", "<:>" }

vim.cmd("colorscheme catppuccin-macchiato")

local undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.undodir = undodir
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

vim.diagnostic.config({
	underline = false,
	virtual_text = {
		spacing = 2,
		prefix = "●",
	},
	update_in_insert = false,
	severity_sort = true,
	signs = {
		text = {
			-- Alas nerdfont icons don't render properly on Medium!
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
})
