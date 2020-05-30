syntax on
set nu
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

autocmd vimenter * colorscheme gruvbox
set background=dark

