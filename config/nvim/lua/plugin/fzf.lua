if os.getenv("TMUX") then
  vim.g.fzf_layout = { tmux = "80%,60%" }
else
  vim.g.fzf_layout = { window = { width = 0.8, height = 0.6 } }
end
