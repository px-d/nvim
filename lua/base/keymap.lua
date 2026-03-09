local set = vim.keymap.set

set("n", "<leader>w", ":write<CR>")
set("n", "<leader>rl", ":update<CR> :source<CR>")

-- Buffer Tab Navigation
set("n", "<c-n>", ":bprevious<cr>", { desc = "Navigate to previous buffer." })
set("n", "<c-m>", ":bnext<cr>", { desc = "Navigate to next buffer." })
set("n", "<c-x>", ":bdelete<cr>", { desc = "Delete buffer" })

-- LSP Stuff
set("n", "gd", ":FzfLua lsp_definitions<cr>", { desc = "[G]o to [D]efinition" })
set("n", "gr", ":FzfLua lsp_references<cr>", { desc = "[G]o to [R]eferences" })
set("n", "gI", ":FzfLua lsp_implementations<cr>", { desc = "[G]o to [I]mplementations" })
set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame symbol" })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- Buffer Navigation
set("n", "<c-f>", function()
	require("flash").jump()
end)

set("n", "<leader>e", ":FzfLua files<CR>")
set("n", "<leader>b", ":FzfLua buffers<CR>")
set("n", "<leader>p", require("oil").toggle_float)
set("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true })
