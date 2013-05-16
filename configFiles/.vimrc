".vimrc
"call pathogen#infect()
filetype plugin indent on
set backspace=2
set nocompatible
set backspace=indent,eol,start
set number
syntax enable
set showtabline=2
set cindent
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set cinkeys=0{,0},:,0#,!^F

"Java Stuff
set complete=.,w,b,u,t,i
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"setlocal omnifunc=javacomplete#Complete
set omnifunc=javacomplete#Complete
"Set Java Complier with key maps
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>
"VIM Theme
"Note background set to dark in .vimrc
highlight Normal     guifg=gray guibg=black
" Remove toolbar
set guioptions-=T
"Vim Key Mappings
imap <F4> <C-p>
