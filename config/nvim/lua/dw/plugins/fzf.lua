return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.keymap.set("n", "<leader>ff", ":FzfLua files<cr>", { desc = "fzf file" })
    vim.keymap.set("n", "<leader>fs", ":FzfLua live_grep<cr>", { desc = "fzf grep" })
    vim.keymap.set("n", "<leader>fc", ":FzfLua grep_cword<cr>", { desc = "fzf grep cursor" })
    vim.keymap.set("n", "<leader>gst", ":FzfLua git_status<cr>", { desc = "git status" })
    vim.keymap.set("n", "<leader>glol", ":FzfLua git_commits<cr>", { desc = "git log" })
  end,
}
