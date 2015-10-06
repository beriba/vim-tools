set history=500

" plugins
filetype plugin on
filetype indent on

" :W saves the file when permission denied
command W w !sudo tee % > /dev/null

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" syntax
syntax enable
colorscheme elflord
set background=dark
let &colorcolumn=+120
highlight ColorColumn ctermbg=Red

" encoding
set encoding=utf8

" backup
set nobackup
set nowb
set noswapfile

" text
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai " auto indent
set si " smart indent
set wrap

" movement
set ruler
set number
map j gj
map k gk
