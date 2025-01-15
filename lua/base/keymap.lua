local set = vim.keymap.set

-- Resize Splits
set("n", "<S-C-Left>", ":vertical resize -5<CR>", {})
set("n", "<S-C-Right>", ":vertical resize +5<CR>", {})
set("n", "<S-C-Up>", ":resize -5<CR>", {})
set("n", "<S-C-Down>", ":resize +5<CR>", {})

-- Naviagte Buffers
set("n", "<s-c-q>", ":bp<cr>")
set("n", "<s-c-e>", ":bn<cr>")
set("n", "<s-c-x>", ":bd<cr>")

-- Navigate panes better
set("n", "<s-c-w>", ":wincmd k<cr>")
set("n", "<s-c-s>", ":wincmd j<cr>")
set("n", "<s-c-a>", ":wincmd h<cr>")
set("n", "<s-c-d>", ":wincmd l<cr>")

-- So that "esc" clears the highlighted last search
set("n", "<esc>", ":nohl<cr>", { noremap = true })
set("n", "<C-s>", ":w<cr>", { noremap = true })

-- File Picker
set("n", "<c-p>", ":Telescope find_files<cr>", {})
set("n", "<S-C-B>", ":Telescope buffers<cr>", {})
set("n", "<c-d>", ":Telescope diagnostics<cr>", {})
-- set("n", "<S-C-G>", ":Telescope git_branches<cr>", {})

-- Flash
set("n", "<c-f>", ":lua require('flash').jump()<cr>")

-- Gitsigns
set("n", "<s-c-g>", ":Gitsigns<cr>", { desc = "Open GitSigns" })

-- LSP Stuff
set("n", "gd", require("telescope.builtin").lsp_definitions, { desc = "[G]o to [D]efinition" })
set("n", "gr", require("telescope.builtin").lsp_references, { desc = "[G]o to [R]eferences" })
set("n", "gI", require("telescope.builtin").lsp_implementations, { desc = "[G]o to [I]mplementations" })
set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
