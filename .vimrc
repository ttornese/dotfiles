call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-ruby/vim-ruby.git'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/altercation/vim-colors-solarized.git'

Plug 'https://github.com/ervandew/supertab.git'

Plug 'git@github.com:mileszs/ack.vim.git'

Plug 'git@github.com:tpope/vim-fugitive.git'

Plug 'git@github.com:eparreno/vim-l9.git'

Plug 'git@github.com:vim-scripts/FuzzyFinder.git'

call plug#end()

set nocompatible

" Colors
set background=dark
colorscheme solarized
hi statusline  ctermfg=5
hi vertsplit  ctermfg=5

" Formatting
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set ruler
set hlsearch
set modifiable
autocmd BufWritePre * :%s/\s\+$//e " remove trailing whitespace

" better tab completion when writing file paths
set wildmenu
set wildmode=longest,list,full

" Persistent undo
set undodir=$HOME/.vim/tmp/
set undofile

" Leader key
let mapleader = ","
" Leader key + f Toggles NERDTree
map <leader>f :NERDTreeFind<CR>
map <leader>l <C-^>
map <leader>b :FufBuffer<CR>

" Close NERDTree splits when I close all other splits
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

