return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    vim.keymap.set("n", "]a", function()
      todo_comments.jump_next()
    end, { desc = "next todo" })

    vim.keymap.set("n", "[a", function()
      todo_comments.jump_prev()
    end, { desc = "prev todo" })

    vim.keymap.set("n", "<leader>fa", "<cmd>lua require('todo-comments.fzf').todo()<cr>", { desc = "fzf todo" })

    todo_comments.setup({
      keywords = {
        todo = { color = "info" },
        note = { color = "hint" },
        warn = { color = "warning" },
        fix = { color = "error" },
      },
    })
  end,
}
