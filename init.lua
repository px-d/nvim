vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.nvim" },
	{ src = "https://github.com/rmagatti/auto-session" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/flash.nvim" },
	{ src = "https://github.com/NvChad/showkeys", opt = true },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/saghen/blink.cmp" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

vim.lsp.enable({ "lua_ls", "svelte", "ts_ls", "tailwindcss", "typescript", "prisma", "gopls" })

require("base.options")
require("base.keymap")
require("base.autocmd")
require("plugins")
