return {
  "mpas/marp-nvim",
  config = function()
    require("marp").setup({})
    local args = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>mt", "<cmd>MarpToggle<cr>", args)
    vim.keymap.set("n", "<leader>ms", "<cmd>MarpStatus<cr>", args)
  end,
}
