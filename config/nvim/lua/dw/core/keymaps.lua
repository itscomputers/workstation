vim.g.mapleader = ";"
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>  ", ":nohl<cr>", { desc = "clear search" })

vim.keymap.set("n", "/", "/\\v")
vim.keymap.set("v", "/", "/\\v")

vim.keymap.set("n", "*", "*<c-o>", { desc = "search at cursor" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "g_")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>to", "<C-w>s10<C-w>_:terminal<cr>i", { desc = "open terminal" })
vim.keymap.set("n", "<leader>tO", "<C-w>s25<C-w>_:terminal<cr>i", { desc = "open large terminal" })
vim.keymap.set("t", "<C-q>", "<C-\\><C-N>:q<cr>", { desc = "quit terminal" })
