return {
  "lervag/vimtex",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_use_temp_files = 1

    vim.g.vimtex_compiler_latexmk = {
      aux_dir = "/tmp",
    }

    local augroup = vim.api.nvim_create_augroup("vimtex_events", {})
    vim.api.nvim_create_autocmd("User", {
      pattern = { "VimtexEventQuit" },
      group = augroup,
      desc = "Clean files on exit",
      command = "VimtexClean",
    })
    vim.api.nvim_create_autocmd("User", {
      pattern = { "VimtexEventInitPost" },
      group = augroup,
      desc = "Compile on init",
      command = "VimtexCompile",
    })
  end,
}
