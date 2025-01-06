local function win_config()
	local height = math.floor(0.618 * vim.o.lines)
	local width = math.floor(0.4 * vim.o.columns)
	return {
		anchor = "NW",
		height = height,
		width = width,
		border = "solid",
		row = math.floor(0.5 * (vim.o.lines - height)),
		col = math.floor(0.5 * (vim.o.columns - width)),
	}
end
return {
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.pairs").setup()
			require("mini.statusline").setup()
			require("mini.tabline").setup()
			require("mini.surround").setup()
			require("mini.diff").setup({
				view = {
					style = "sign",
					signs = { add = "█", change = "▒", delete = "-" },
				},
			})
		end,
	},
}
