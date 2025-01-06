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
set("n", "<leader>p", ":Telescope find_files<cr>", {})
set("n", "<S-C-B>", ":Telescope buffers<cr>", {})
set("n", "<c-d>", ":Telescope diagnostics<cr>", {})
-- set("n", "<S-C-G>", ":Telescope git_branches<cr>", {})
