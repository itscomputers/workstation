return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
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
        "cssls",
        "elixirls",
        "html",
        -- "jdtls" or "java_language_server"
        "jsonls",
        "ltex",
        "lua_ls",
        "pyright",
        "ruby_lsp",
        "rust_analyzer",
        "tailwindcss",
        "tsserver",
        "yamlls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "black",
        "clang-format",
        "debugpy",
        "eslint_d",
        "flake8",
        "isort",
        "prettier",
        "rubyfmt",
        "stylua",
      },
    })
  end,
}
