set nocompatible


"Vundle Start
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Iceburg color scheme
Plugin 'cocopon/iceberg.vim'
"AutoCompletion
Plugin 'Valloric/YouCompleteMe'
"Another plugin for autocompletion
Plugin 'SirVer/ultisnips'
"Fancy status bar
Plugin 'vim-airline/vim-airline'
"Bad Whitespace
Plugin 'bitc/vim-bad-whitespace'
"For editing plists on mac
Plugin 'darfink/vim-plist'

"Language Support
"julia
Plugin 'JuliaEditorSupport/julia-vim'
"LaTeX
Plugin 'lervag/vimtex'
"Python
Plugin 'python-mode/python-mode'
"CoffeeScript
Plugin 'kchmck/vim-coffee-script'
call vundle#end()
filetype plugin indent on
"VundleEnd


if exists("b:current_syntax")
    finish
endif


colorscheme iceberg
syntax on

"ScrollbarWidth
set sw=4
"TagSelect
set ts=4
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
"set clipboard=unnamed


"YouCompleteMe stuff
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/local/bin/python3'
"python-mode
let g:pymode_python = 'python3'
let g:pymode_lint_cwindow = 0
"vimtex stuff
let g:vimtex_compiler_progname = 'nvr'
autocmd FileType tex nnoremap <buffer> <C-T> :!xelatex %<CR>
autocmd FileType tex nnoremap <buffer> <C-E> :below split %:r.log<CR>
autocmd FileType tex nnoremap <buffer> T :!open -a Skim %:r.pdf<CR><CR>
autocmd BufWritePost *.tex :silent exec '!xelatex %'


"MapKeys
let mapleader = "z"

nnoremap <silent> <leader>sv :vsplit ~/.vimrc<cr>
nnoremap <silent> <leader>ev :edit ~/.vimrc<cr>
"nnoremap <silent> <leader>m :Matrix<cr>
"nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

inoremap <silent> jk <esc>:set timeoutlen=1000<cr>
vnoremap <silent> jk <esc>:set timeoutlen=1000<cr>
inoremap <silent> <esc> <esc>:set timeoutlen=1000<cr>
vnoremap <silent> <esc> <esc>:set timeoutlen=1000<cr>
nnoremap <silent> i :set timeoutlen=200<cr>i
nnoremap <silent> I :set timeoutlen=200<cr>I
nnoremap <silent> a :set timeoutlen=200<cr>a
nnoremap <silent> A :set timeoutlen=200<cr>A
nnoremap <silent> o :set timeoutlen=200<cr>o
nnoremap <silent> O :set timeoutlen=200<cr>O
nnoremap <silent> v :set timeoutlen=200<cr>v
nnoremap <silent> V :set timeoutlen=200<cr>V
nnoremap <silent>  :set timeoutlen=200<cr>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nnoremap <silent> <leader>x :%!xxd<cr>
nnoremap <silent> <leader>z :call histdel('/')<cr>

nnoremap s @@


"Abbreviations
iabbrev tem template<class T>
iabbrev tem2 template<class T1, class T2>
iabbrev logline printf("Error: %s, File: %s, Line: %d\n", "", __FILE__, __LINE__);<esc>F"i


"Remember last pos
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
