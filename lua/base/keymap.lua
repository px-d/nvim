local set = vim.keymap.set

set("n", "<leader>w", ":write<CR>")
set("n", "<leader>rl", ":update<CR> :source<CR>")

-- Buffer Tab Navigation
set("n", "<c-n>", ":bprevious<cr>", { desc = "Navigate to previous buffer." })
set("n", "<c-m>", ":bnext<cr>", { desc = "Navigate to next buffer." })
set("n", "<c-x>", ":bdelete<cr>", { desc = "Delete buffer" })

-- LSP Stuff
set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame symbol" })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- Buffer Navigation
set("n", "<c-f>", function()
	require("flash").jump()
end)

-- Picking stuff
set("n", "<leader>e", ":Pick files<CR>")
set("n", "<leader>b", ":Pick buffers<CR>")

set("n", "<leader>p", require("oil").toggle_float)
-- set("n", "<leader>t", ":NvimTreeFocus<CR>", { silent = true })
set("n", "<leader>t", ":NvimTreeToggle<CR>", { silent = true })
