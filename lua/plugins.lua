-- Mini
require("mini.surround").setup()
require("mini.extra").setup()
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

require("fzf-lua").setup({
	files = {
		cmd = "rg --hidden --files --glob '!{node_modules,.nuxt,.git,.next,target}' .",
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
	update_focused_file = {
		enable = true,
		update_cwd = true,
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
require("tabout").setup()

-- LSP/Completion Stuff
require("mason").setup()
require("blink.cmp").setup({
	snippets = { preset = "mini_snippets" },
	fuzzy = { implementation = "lua" },
	keymap = { preset = "super-tab" },
})
require("nvim-treesitter.configs").setup({
	ensure_installed = { "svelte", "typescript", "javascript", "prisma" },
	highlight = { enable = true },
})
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
