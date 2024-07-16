local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local code_dark = require("lualine.themes.codedark")

lualine.setup({
  options = {
    theme = code_dark,
  },
})
