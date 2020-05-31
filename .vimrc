call plug#begin('~/.vim/plugged')

syntax on
set nu
set ic
"set ls 
set hls
"set shortmess=at

Plug 'morhetz/gruvbox'

call plug#end()

autocmd vimenter * colorscheme gruvbox
set background=dark
