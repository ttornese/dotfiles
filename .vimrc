call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-ruby/vim-ruby.git'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/altercation/vim-colors-solarized.git'

Plug 'https://github.com/ervandew/supertab.git'

Plug 'git@github.com:rking/ag.vim.git'

Plug 'git@github.com:tpope/vim-fugitive.git'

Plug 'git@github.com:eparreno/vim-l9.git'

Plug 'git@github.com:vim-scripts/FuzzyFinder.git'

Plug 'git@github.com:sheerun/yajs.vim.git'

Plug 'git@github.com:mxw/vim-jsx.git'

Plug 'git@github.com:elzr/vim-json.git'

Plug 'git@github.com:scrooloose/syntastic.git'

Plug 'git@github.com:suan/vim-instant-markdown.git'

call plug#end()

set nocompatible

" Colors
set background=dark
colorscheme solarized
hi statusline  ctermfg=5
hi vertsplit  ctermfg=5
set colorcolumn=80
highlight ColorColumn ctermbg=magenta

" Formatting
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set tabstop=4 shiftwidth=2 softtabstop=2
set autoindent
set ruler
set hlsearch
set modifiable
autocmd BufWritePre * :%s/\s\+$//e " remove trailing whitespace
set number

" mouse mode
set mouse=a

" better tab completion when writing file paths
set wildmenu
set wildmode=longest,list,full

set directory^=$HOME/.vim/tmp//

" Persistent undo
set undodir=$HOME/.vim/tmp/
set undofile

" jsx syntax highlighting
let g:jsx_ext_required = 0

" Leader key
let mapleader = ","
" ,f find file in NERDTree, ,n toggle NERDTree
map <leader>f :NERDTreeFind<CR>
map <leader>n :NERDTreeToggle<CR>
" ,l switch to first file in buffer
map <leader>l <C-^>
" enable FufBuffer
map <leader>b :FufBuffer<CR>

" Close NERDTree splits when I close all other splits
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
