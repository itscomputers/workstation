let mapleader = ";"
let maplocalleader = ","

set encoding=UTF-8
set number
set ruler
set textwidth=90
set scrolloff=3
set showcmd

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set backup
set nowritebackup
set noswapfile
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set backspace=indent,eol,start
set splitbelow
set splitright

if has("termguicolors")
  set termguicolors
endif
set background=dark
let g:sonokai_style = "shusia"
let g:sonokai_better_performance = 1
let g:sonokai_transparent_background = 1
colorscheme sonokai

syntax on
filetype plugin indent on

let g:tex_flavor = "latex"

if exists("$TMUX")
  let g:fzf_layout = { "tmux": "80%,60%" }
else
  let g:fzf_layout = { "window": { "width": 0.8, "height": 0.6 } }
endif
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

autocmd BufWritePre * %s/\s\+$//e

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if tabpagenr("$") == 1 && winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | quit | endif

command! -bang -nargs=* Find
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>),
      \   fzf#vim#with_preview(), <bang>0)

lua <<EOF
require("lsp-config")
require("mappings")
require("plugins")
EOF
