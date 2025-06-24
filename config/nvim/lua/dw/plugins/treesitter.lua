return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "RRethy/nvim-treesitter-endwise",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
        disable = { "latex" },
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      endwise = {
        enable = true,
      },
      ensure_installed = {
        "bash",
        "c",
        "css",
        "elixir",
        "gitignore",
        "gleam",
        "html",
        "java",
        "javascript",
        "json",
        "just",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "racket",
        "ruby",
        "rust",
        "scheme",
        "scss",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<BS>",
        },
      },
    })
  end,
}
