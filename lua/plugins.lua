-- Mini
require("mini.pick").setup()
require("mini.surround").setup()
require("mini.ai").setup()
require("mini.notify").setup()
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
require("nvim-tree").setup({
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		api.config.mappings.default_on_attach(bufnr)

		vim.keymap.set("n", "S", function()
			api.node.open.edit()
			api.tree.focus()
		end, opts("Open and Stay"))
	end,
})

-- Session Management
require("auto-session").setup({
	suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	auto_restore = true,
})

-- Utilities
require("showkeys").setup({ position = "top-right" })
require("catppuccin").setup({ no_italic = true })

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
		javascript = { "biome", "biome-organize-imports" },
		typescript = { "biome", "biome-organize-imports" },
		typescriptreact = { "biome", "prettierd", "prettier" },
		svelte = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		go = { "gofumpt" },
		json = { "biome" },
	},
})
