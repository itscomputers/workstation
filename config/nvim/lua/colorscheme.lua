vim.g.sonokai_style = "shusia"
vim.g.sonokai_better_performance = 1
vim.g.sonokai_transparent_background = 1

local status, _ = pcall(vim.cmd, "colorscheme sonokai")

if not status then
  print("colorscheme not found")
  return
end

