local opt = vim.opt

opt.encoding = "UTF-8"
opt.number = true
opt.ruler = true
opt.textwidth = 90
opt.scrolloff = 3
opt.showcmd = true
opt.clipboard:append("unnamedplus")

opt.autoindent = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.backup = true
opt.writebackup = false
opt.swapfile = false
opt.backupdir = "~/.vim/backup//"
opt.directory = "~/.vim/swap//"
opt.undodir="~/.vim/undo//"

opt.backspace = "indent,eol,start"
opt.splitbelow = true
opt.splitright = true

opt.termguicolors = true
opt.background = "dark"
opt.cursorline = true
opt.signcolumn = "yes"

opt.iskeyword:append("-")
