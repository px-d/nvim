-- Mini
require("mini.pick").setup()
require("mini.tabline").setup()
require("mini.statusline").setup()
require("mini.icons").setup()
require("mini.snippets").setup()
require("mini.pairs").setup()
require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "█", change = "▒", delete = "-" },
	},
})

-- File Picker
require("oil").setup({
	keymaps = {
		["q"] = "actions.close",
	},
})

-- Session Management
require("auto-session").setup({
	suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	auto_restore = true,
})

-- Utilities
require("showkeys").setup({ position = "top-right" })

-- LSP/Completion Stuff
require("mason").setup()
require("blink.cmp").setup({
	snippets = { preset = "mini_snippets" },
	fuzzy = { implementation = "lua" },
	keymap = { preset = "super-tab" },
})
require("nvim-treesitter.configs").setup({ ensure_installed = { "svelte", "typescript", "javascript", "prisma" } })
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		svelte = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		go = { "gofumpt" },
	},
})
