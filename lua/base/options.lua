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
vim.cmd("colorscheme catppuccin-macchiato")

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
