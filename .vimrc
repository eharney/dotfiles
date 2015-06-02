set nocompatible

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=1000


autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set et

set tabstop=4
set shiftwidth=4

set cryptmethod=blowfish2

" Work around screwy colors in F22 vim
colorscheme default
