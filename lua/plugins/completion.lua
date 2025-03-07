local complete_char = ";"

return {
	{ "rafamadriz/friendly-snippets" },
	{ "moyiz/blink-emoji.nvim" },

	{
		"saghen/blink.cmp",
		version = "*",

		opts = {
			keymap = { preset = "super-tab" },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			sources = {
				default = { "lazydev", "lsp", "snippets", "path", "buffer", "emoji" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						score_offset = 100,
					},
					emoji = {
						module = "blink-emoji",
						name = "Emoji",
						score_offset = 15, -- Tune by preference
						opts = { insert = true }, -- Insert emoji (default) or complete its name
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
