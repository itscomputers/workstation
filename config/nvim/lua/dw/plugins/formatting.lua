return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        c = { "clang-format" },
        css = { "prettier" },
        gleam = { "gleam" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        just = { "just" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "ruff_format" },
        ruby = { "rubyfmt" },
        rust = { "rustfmt" },
        tex = { "tex-fmt" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
      formatters = {
        ["tex-fmt"] = {
          prepend_args = { "--wraplen", "135" },
        },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "format current file" })
  end,
}
