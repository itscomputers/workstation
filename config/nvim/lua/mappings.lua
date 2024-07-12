vim.keymap.set("n", "<Leader>  ", ":noh<cr>:call clearmatches()<cr>")

vim.keymap.set("n", "<Leader>ff", ":Files<cr>")
vim.keymap.set("n", "<Leader>ss", ":Find<cr>")
vim.keymap.set("n", "<Leader>hh", ":History<cr>")
vim.keymap.set("n", "<Leader>git", ":Commits<cr>")

vim.keymap.set("n", "/", "/\\v")
vim.keymap.set("v", "/", "/\\v")

vim.keymap.set("n", "*", "*<c-o>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "g_")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<Leader>tt", "<C-w>s10<C-w>_:terminal<cr>i")
vim.keymap.set("n", "<Leader>TT", "<C-w>s25<C-w>_:terminal<cr>i")
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")

