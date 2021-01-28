syntax enable
filetype plugin indent on

set clipboard+=unnamedplus
           
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nowrap

set noswapfile
set hidden
set noerrorbells
set ignorecase
set relativenumber
set nu
set nohlsearch
set scrolloff=8
set signcolumn=yes


set undodir=~/.config/nvim/undodir
set undofile
set termguicolors
set colorcolumn=80

highlight ColorColumn ctermbg=80 guibg=lightgrey

packloadall

call plug#begin()

Plug 'neoclide/coc.nvim'
Plug 'ThePrimeagen/vim-be-good'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'

Plug 'Rigellute/shades-of-purple.vim'
Plug 'wadackel/vim-dogrun'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme shades_of_purple

echo "stowed!"
