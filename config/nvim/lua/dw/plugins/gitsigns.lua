return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      map("n", "]g", gs.next_hunk, "next git hunk")
      map("n", "[g", gs.prev_hunk, "prev git hunk")

      map("n", "<leader>gp", gs.preview_hunk, "preview git hunk")
      map("n", "<leader>gco", gs.reset_hunk, "reset git hunk")

      map("n", "<leader>gb", function()
        gs.blame_line({ full = true })
      end, "git blame")
    end,
  }
}
