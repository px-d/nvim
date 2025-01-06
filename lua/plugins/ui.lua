local function toggle_tree()
	local api = require("nvim-tree.api")
	local view = require("nvim-tree.view")

	if view.is_visible() then
		if view.get_winnr() == vim.api.nvim_get_current_win() then
			api.tree.close() -- If focused, close the tree
		else
			api.tree.focus() -- If open but not focused, focus the tree
		end
	else
		api.tree.open() -- If hidden, open the tree
	end
end

return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local plugin = require("nvim-tree")
			plugin.setup({
				update_focused_file = {
					enable = true,
					update_cwd = true,
				},
			})
			vim.keymap.set("n", "<leader>t", toggle_tree, {})
			vim.keymap.set("n", "<c-b>", ":NvimTreeToggle<cr>", {})
		end,
	},
	{
		"laytan/cloak.nvim",
		config = function()
			require("cloak").setup({})

			vim.keymap.set({ "n" }, "<S-C-P>", ":CloakToggle<cr>")
		end,
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
		},
	},
}
