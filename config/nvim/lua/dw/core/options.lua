vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
local vimdir = vim.fn.expand("~/.vim/tmp")

opt.encoding = "UTF-8"
opt.textwidth = 90
opt.scrolloff = 3

opt.termguicolors = true
opt.background = "dark"

opt.number = true
opt.signcolumn = "yes"
opt.cursorline = true

opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.clipboard:append("unnamedplus")

opt.backup = true
opt.writebackup = false
opt.swapfile = false
opt.backupdir = { vimdir .. "/.backup//" }
opt.directory = { vimdir .. "/.swap//" }
opt.undodir = { vimdir .. "/.undo//" }

opt.backspace = "indent,eol,start"
opt.splitbelow = true
opt.splitright = true

opt.iskeyword:append("-")

vim.cmd("let g:tmux_navigator_save_on_switch = 2")
