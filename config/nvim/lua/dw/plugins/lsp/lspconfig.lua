return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = {
              "vim",
              "require",
            },
          },
        },
      },
    })

    local lspconfig = require("lspconfig")

    local x = vim.diagnostic.severity

    vim.diagnostic.config({
      underline = false,
      signs = { text = { [x.ERROR] = " ", [x.WARN] = " ", [x.HINT] = "󰠠 ", [x.INFO] = " " } },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "show LSP references"
        vim.keymap.set("n", "gR", "<cmd>FzfLua lsp_references<cr>", opts)

        opts.desc = "go to declaration"
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "show lsp definitions"
        vim.keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<cr>", opts)

        opts.desc = "show lsp implementations"
        vim.keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<cr>", opts)

        opts.desc = "show lsp type definitions"
        vim.keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<cr>", opts)

        opts.desc = "see available code actions"
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "smart rename"
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "show buffer diagnostics"
        vim.keymap.set("n", "<leader>D", "<cmd>FzfLua document_diagnostics<cr>", opts)

        opts.desc = "show line diagnostics"
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

        opts.desc = "go to prev diagnostic"
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "go to next diagnostic"
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "show documentation at cursor"
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "restart LSP"
        vim.keymap.set("n", "<leader>rs", ":LspRestart<cr>", opts)
      end,
    })

    lspconfig.gleam.setup({})
  end,
}
