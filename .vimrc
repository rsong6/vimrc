set nocompatible

execute pathogen#infect()
call pathogen#helptags()

syntax on
set ruler
set autoread
set scrolloff=5
set sidescrolloff=5
set hidden
set tabstop=4
set autoindent
set copyindent
set number
set shiftwidth=4
set showmatch

set history=1000
set undolevels=1000

filetype indent plugin on

autocmd BufNewFile,BufRead *.json set filetype=javascript

autocmd BufNewFile,BufRead *.scala set filetype=scala
autocmd BufNewFile,BufRead *.sbt set filetype=scala
autocmd FileType scala setlocal syntax=scala

au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 
au FileType python setlocal autoindent fileformat=unix

au FileType html setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2 
au FileType html setlocal autoindent fileformat=unix

au FileType javascript setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2 
au FileType javascript setlocal autoindent fileformat=unix

au FileType java setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 
au FileType java setlocal autoindent fileformat=unix

au FileType scala setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 
au FileType scala setlocal autoindent fileformat=unix


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump=0
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers=['pyflakes', 'pep8', 'python']
let g:syntastic_scala_checkers=['scalac', 'scalastyle']

