set history=500

" plugins
execute pathogen#infect()
filetype plugin on
filetype indent on

if !exists(":W")
    " :W saves the file when permission denied
    command W w !sudo tee % > /dev/null
endif

" search
set ignorecase
set smartcase
set hlsearch
set incsearch
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"helptags ~/.vim/bundle/ctrlp.vim/doc

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
set foldmethod=indent

" movement
set ruler
set number
map j gj
map k gk

" codesniffer & mess detector
" Pass arguments to phpcs binary
let g:phpqa_codesniffer_args = "--standard=Zend--tab-width=4"
" PHP codesniffer binary (default = phpcs)
let g:phpqa_codesniffer_cmd='phpcs'
" Run codesniffer on save (default = 1)
"let g:phpqa_codesniffer_autorun = 0

let g:phpqa_messdetector_cmd='phpmd'

" PHP Documentator
" autocmd FileType php inoremap <C-d> <ESC>:call PhpDocSingle()<CR>i
" autocmd FileType php nnoremap <C-d> :call PhpDocSingle()<CR>
" autocmd FileType php vnoremap <C-d> :call PhpDocRange()<CR> 
