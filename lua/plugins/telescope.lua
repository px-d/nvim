return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
			defaults = {
				file_ignore_patterns = { "node_modules/", ".git/", ".idea/", ".gradle/" },
				path_display = { "truncate" },
				layout_strategy = "flex",
				sorting_strategy = "ascending",
				layout_config = {
					prompt_position = "top",
					preview_cutoff = 1,
					width = 0.9,
				},
				horizontal = {
					preview_width = 0.2,
				},
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
			pickers = {
				find_files = {
					prompt_position = "top",
					layout_strategy = "horizontal",
					layout_config = {
						preview_width = 0.6,
					},
					hidden = true,
				},
				live_grep = {
					prompt_position = "top",
					layout_strategy = "horizontal",
					layout_config = {
						preview_width = 0.6,
					},
					hidden = true,
				},
				buffers = {
					previewer = false,
					theme = "dropdown",
				},
				diagnostics = {
					previewer = true,
					layout_strategy = "horizontal",
					layout_config = {
						preview_width = 0.3,
					},
				},
				lsp_references = {
					layout_strategy = "horizontal",
					layout_config = {
						preview_width = 0.6,
					},
				},
			},
		})
		require("telescope").load_extension("ui-select")
		function FuzzyFindInBuffer()
			require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 0,
				previewer = false,
			}))
		end

		vim.keymap.set("n", "<S-C-f>", FuzzyFindInBuffer, { desc = "Fuzzily find in buffer" })
		vim.keymap.set("n", "<c-g>", ":Telescope live_grep<cr>", { desc = "Live Grep" })
	end,
}
