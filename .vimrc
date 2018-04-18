set nocompatible


"Vundle Start
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Dracula Color Scheme
Plugin 'dracula/vim'
"ScreenSaver just for fun
Plugin 'uguu-org/vim-matrix-screensaver'
"AutoCompletion
Plugin 'Valloric/YouCompleteMe'
"Another plugin for autocompletion
Plugin 'SirVer/ultisnips'
"Fancy status bar
Plugin 'vim-airline/vim-airline'
"File tree
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
"VundleEnd


if exists("b:current_syntax")
    finish
endif


colorscheme dracula
syntax on

"ScrollbarWidth
set sw=4
"TagSelect
set ts =4

set whichwrap=<,>,[,]
set backspace=indent,eol,start
set number
set norelativenumber
set showcmd
set ruler
set hlsearch
set showmatch
set wildmenu
set incsearch
set cursorline
set laststatus=2
set autoindent
set smartindent
set nospell
set wrap
set viminfo='100,<1000,s100,h
set tabstop=4


"YouCompleteMe stuff
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = 'python3'


"MapKeys
let mapleader = "z"

"nnoremap <silent> <leader>sv :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sv :vsplit ~/.vimrc<cr>
"nnoremap <silent> <leader>ev :edit $MYVIMRC<cr>
nnoremap <silent> <leader>ev :edit ~/.vimrc<cr>
nnoremap <silent> <leader>st :vsplit ~/Program/doc/TODO.txt<cr>
nnoremap <silent> <leader>et :edit ~/Program/doc/TODO.txt<cr>
nnoremap <silent> <leader>se :copen<cr>
nnoremap <silent> <leader>ce :cclose<cr>
nnoremap <silent> <leader>m :Matrix<cr>
nnoremap <silent> <leader>q :wq<cr>
nnoremap <silent> <leader>w <c-w>
nnoremap <silent> <leader>n :NERDTreeToggle<cr>

"inoremap <silent> jk <esc>:set timeoutlen=1000<cr>:set relativenumber<cr>
inoremap <silent> jk <esc>:set timeoutlen=1000<cr>
vnoremap <silent> jk <esc>:set timeoutlen=1000<cr>
"inoremap <silent> <esc> <esc>:set timeoutlen=1000<cr>:set relativenumber<cr>
inoremap <silent> <esc> <esc>:set timeoutlen=1000<cr>
vnoremap <silent> <esc> <esc>:set timeoutlen=1000<cr>
nnoremap <silent> i :set timeoutlen=100<cr>:set norelativenumber<cr>i
nnoremap <silent> I :set timeoutlen=100<cr>:set norelativenumber<cr>I
nnoremap <silent> a :set timeoutlen=100<cr>:set norelativenumber<cr>a
nnoremap <silent> A :set timeoutlen=100<cr>:set norelativenumber<cr>A
nnoremap <silent> o :set timeoutlen=100<cr>:set norelativenumber<cr>o
nnoremap <silent> O :set timeoutlen=100<cr>:set norelativenumber<cr>O
nnoremap <silent> v :set timeoutlen=100<cr>v
nnoremap <silent> V :set timeoutlen=100<cr>V
nnoremap <silent>  :set timeoutlen=100<cr>


"Abbreviations
iabbrev tem template<class T>
iabbrev tem2 template<class T1, class T2>
iabbrev logline printf("Error: %s, File: %s, Line: %d\n", "", __FILE__, __LINE__);<esc>F"i


"Remember last pos
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
