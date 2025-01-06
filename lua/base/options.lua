vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt
local indent = 4

opt.clipboard = "unnamedplus"
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"
opt.matchpairs = { "(:)", "[:]", "{:}", "<:>" }
opt.syntax = "enable"

-- Indentation
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.softtabstop = indent
opt.tabstop = indent
opt.smartindent = true
opt.shiftround = true

-- ui
opt.cursorline = true
opt.laststatus = 2
opt.lazyredraw = true
opt.list = true
opt.listchars = {
    tab = "│ ",
    trail = ".",
    extends = "»",
    precedes = "«",
    nbsp = "×",
}

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors

-- general
opt.mouse = "a"           -- allow the mouse to be used in neovim
opt.number = true         -- set numbered lines
opt.relativenumber = true -- set relative numbered lines
opt.scrolloff = 8         -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 3     -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`
opt.signcolumn = "yes"    -- always show the sign column, otherwise it would shift the text each time
opt.splitbelow = true     -- open new split below
opt.splitright = true     -- open new split to the right
opt.wrap = false          -- display a long line
opt.showmode = true

local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true -- enable persistent undo
opt.undodir = undodir
opt.undolevels = 1000
opt.undoreload = 10000

vim.o.spelllang = "de,en"
vim.o.spelloptions = "camel"
