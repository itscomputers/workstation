return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✔",
          package_pending = "➜",
          package_uninstalled = "✖",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "clangd",
        "elixirls",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "ruff",
        "rust_analyzer",
        "tailwindcss",
        "texlab",
        "ts_ls",
        "yamlls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "clang-format",
        "debugpy",
        "eslint_d",
        "prettier",
        "ruff",
        "stylelint",
        "stylua",
        "tex-fmt",
      },
    })
  end,
}
