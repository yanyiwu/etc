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
set paste

command Q : q
command W : w
command Wq : wq
command WQ : wq


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

filetype off
filetype plugin on
filetype indent on
set enc=utf8
set fencs=utf8,gbk

" highlight search
set hlsearch
" open file and go to the line last time you out
au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g'\"" |
    \ endif





" bundle



set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

"" My bundles here:
""
"" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
"" Git repos on your local machine (i.e. when working on your own plugin)
""Bundle 'file:///Users/gmarik/path/to/plugin'
"" better color
"Bundle 'tomasr/molokai'
"
"Bundle 'pangloss/vim-javascript'

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

nmap j <left>
nmap l <right>
nmap i <up>
nmap k <down>
nmap h <insert>
