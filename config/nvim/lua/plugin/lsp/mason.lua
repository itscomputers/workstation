local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local lsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not lsp_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    -- "elixirls",
    "html",
    "jsonls",
    -- "jdtls",
    "tsserver",
    -- "ltex",
    "sumneko_lua",
    -- "markdown_oxide",
    "pyright",
    "standardrb",
    -- "rust_analyzer",
    -- "tailwindcss",
    "cssls",
  },
})
