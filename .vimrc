call plug#begin('~/.vim/plugged')

syntax on
set nu
set ic
"set ls 
set hls
"set shortmess=at

Plug 'morhetz/gruvbox'
Plug 'lilydjwg/colorizer'

call plug#end()

autocmd vimenter * colorscheme gruvbox
set background=dark
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
