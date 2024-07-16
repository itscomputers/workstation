local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local on_attach = function(client, bufnr)
  local opts = { noremap = true, slient = true, buffer = bufnr }

  vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<cr>", opts)
  vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition()<cr>", opts)
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
  vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<cr>", opts)
  vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<cr>", opts)
  vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
  vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
  vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
  vim.keymap.set("n", "<leader>o", "<cmd>LScoutlineToggle<cr>", opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

