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
"Clang-based highlighting
"Plugin 'arakashic/chromatica.nvim'
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
set showcmd
set ruler
set hlsearch
set showmatch
set wildmenu
set incsearch
set statusline=%f%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
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


"MapKeys
let mapleader = "z"

"nnoremap <silent> <leader>sv :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sv :vsplit ~/.vimrc<cr>
"nnoremap <silent> <leader>ev :edit $MYVIMRC<cr>
nnoremap <silent> <leader>ev :edit ~/.vimrc<cr>
nnoremap <silent> <leader>st :vsplit ~/Program/doc/TODO.txt<cr>
nnoremap <silent> <leader>et :edit ~/Program/doc/TODO.txt<cr>
nnoremap <silent> <leader>sd :execute ":vsplit " . substitute(substitute(substitute(expand('%:p'), '\.cpp', '', 'g'), '\.h', '', 'g'), '\/src\/', '\/doc\/', 'g') . '.txt'<cr>
nnoremap <silent> <leader>ed :execute ":edit " . substitute(substitute(substitute(expand('%:p'), '\.cpp', '', 'g'), '\.h', '', 'g'), '\/src\/', '\/doc\/', 'g') . '.txt'<cr>
nnoremap <silent> <leader>sc :execute ":vsplit " . (substitute(expand('%'), '\.cpp', '\.h', 'g') ==# expand('%') ? substitute(expand('%'), '\.h', '\.cpp', 'g') : substitute(expand('%'), '\.cpp', '\.h', 'g'))<cr>
nnoremap <silent> <leader>ec :execute ":edit " . (substitute(expand('%'), '\.cpp', '\.h', 'g') ==# expand('%') ? substitute(expand('%'), '\.h', '\.cpp', 'g') : substitute(expand('%'), '\.cpp', '\.h', 'g'))<cr>
nnoremap <silent> <leader>se :copen<cr>
nnoremap <silent> <leader>ce :cclose<cr>
nnoremap <silent> <leader>m :Matrix<cr>
nnoremap <silent> <leader>q :wq<cr>
nnoremap <silent> <leader>w <c-w>
nnoremap <silent> <leader>ch :e ++enc=gb2312<cr>
inoremap jk <Esc>
vnoremap jk <Esc>


"Abbreviations
iabbrev tem template<class T>
iabbrev tem2 template<class T1, class T2>
iabbrev logline printf("Error: %s, File: %s, Line: %d\n", "", __FILE__, __LINE__);<esc>F"i


"Spellings
iabbrev >? <>
iabbrev M< <>
iabbrev )_ ()


"For the dark blue background
"set termguicolors


"PowerLine, fancy status bar
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


"Highlighting
"let g:chromatica#libclang_path='/Users/jimmyding/.vim/bundle/YouCompleteMe/third_party/ycmd/libclang.dylib'
"let g:chromatica#enable_at_startup=1


"Remember last pos
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
