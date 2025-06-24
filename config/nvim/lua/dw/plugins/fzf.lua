return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.keymap.set("n", "<leader>ff", ":FzfLua files<cr>", { desc = "fzf file" })
    vim.keymap.set("n", "<leader>fs", ":FzfLua live_grep<cr>", { desc = "fzf grep" })
    vim.keymap.set("n", "<leader>fc", ":FzfLua grep_cword<cr>", { desc = "fzf grep cursor" })
    vim.keymap.set("n", "<leader>gst", ":FzfLua git_status<cr>", { desc = "git status" })
    vim.keymap.set("n", "<leader>glol", ":FzfLua git_commits<cr>", { desc = "git log" })

    local fzf = require("fzf-lua")
    local actions = require("fzf-lua.actions")

    fzf.setup({
      actions = {
        files = {
          ["default"] = actions.file_edit_or_qf,
          ["ctrl-x"] = actions.file_split,
          ["ctrl-v"] = actions.file_vsplit,
          ["ctrl-t"] = actions.file_tabedit,
          ["alt-q"] = actions.file_sel_to_qf,
          ["alt-l"] = actions.file_sel_to_ll,
        },
        buffer = {
          ["default"] = actions.buf_edit,
          ["ctrl-x"] = actions.buf_split,
          ["ctrl-v"] = actions.buf_vsplit,
          ["ctrl-t"] = actions.buf_tabedit,
        },
      },
    })
  end,
}
