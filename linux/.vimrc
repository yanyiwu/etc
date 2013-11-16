syntax on
set tabstop=4
"set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set history=4000
set mouse=v
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set number
set smarttab
set expandtab
set backspace=indent,eol,start

command Q : q
command W : w
command Wq : wq


" show the percentage of the content 
set ru

" keep matching while you enter any character of searching keywords 
"set is

"set whichwrap=b,s,<,>,[,]

if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

filetype on
filetype plugin on
filetype indent on
" set encoding=gbk
set fencs=utf-8,gbk

" highlight search
set hlsearch
" open file and go to the line last time you out
au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g'\"" |
    \ endif

