if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd BufWritePre * %s/\s\+$//e

set number
set ruler
set textwidth=90

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set backspace=indent,eol,start

set splitbelow
set splitright

let mapleader = ";"
let maplocalleader = ","
let g:tex_flavor = 'latex'
let g:fzf_layout={ 'right': '40%' }

map <Leader>pp :VimuxPromptCommand<CR>
map <Leader>ll :VimuxRunLastCommand<CR>
map <Leader>ff :Files<CR>
map <Leader>hh :History<CR>
map <Leader>ss :Find<CR>

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-rails'
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-stylishask'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'slim-template/vim-slim'
Plug 'NoahTheDuke/vim-just'
call plug#end()

syntax on
filetype plugin indent on

colorscheme slate

" --column: Show column number
"  " --line-number: Show line number
"  " --no-heading: Do not show file headings in results
"  " --fixed-strings: Search term as a literal string
"  " --ignore-case: Case insensitive search
"  " --no-ignore: Do not respect .gitignore, etc...
"  " --hidden: Search hidden files and folders
"  " --follow: Follow symlinks
"  " --glob: Additional conditions for search (in this case ignore everything
"  in the .git/ folder)
"  " --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
