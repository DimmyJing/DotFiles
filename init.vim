set nocompatible


call plug#begin(stdpath('data') . '/plugged')
"Iceburg color scheme
Plug 'cocopon/iceberg.vim'
"AutoCompletion
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
"Another plugin for autocompletion
Plug 'SirVer/ultisnips'
"Fancy status bar
Plug 'vim-airline/vim-airline'
"Bad Whitespace
Plug 'bitc/vim-bad-whitespace'

"Language Support
"plist
" Plug 'darfink/vim-plist'
"julia
" Plug 'JuliaEditorSupport/julia-vim'
"LaTeX
" Plug 'lervag/vimtex'
"Python
Plug 'python-mode/python-mode'
"CoffeeScript
" Plug 'kchmck/vim-coffee-script'
"Required for markdown
Plug 'godlygeek/tabular'
"Markdown
Plug 'plasticboy/vim-markdown'
"Markdown Preview
Plug 'iamcco/markdown-preview.nvim'
"Processing
" Plug 'sophacles/vim-processing'
call plug#end()


if exists("b:current_syntax")
    finish
endif

set shiftwidth=4
set whichwrap=<,>,[,]
set backspace=indent,eol,start
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
set number
set relativenumber
"set clipboard=unnamed
set nofoldenable " temporary, disables folding


"YouCompleteMe stuff
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/local/bin/python3'
"Ultisnip stuff
let g:UltiSnipsSnippetDirectories = ['/Users/jimmyding/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"python-mode stuff
let g:pymode_python = 'python3'
let g:pymode_lint_cwindow = 0
"vimtex stuff
let g:vimtex_compiler_progname = 'nvr'
"markdown stuff
let g:vim_markdown_math = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_echo_preview_url = 1


"MapKeys
let mapleader = "z"

nnoremap <silent> <leader>sv :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>ev :edit ~/.config/nvim/init.vim<cr>

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


augroup YCM
	autocmd!
	autocmd FileType markdown,tex,snippets let g:loaded_youcompleteme = 1
	autocmd FileType markdown,tex,snippets let g:ycm_key_list_select_completion=[]
	autocmd FileType markdown,tex,snippets let g:ycm_key_list_previous_completion=[]
augroup END

augroup LaTeX
	autocmd!
	autocmd FileType tex nnoremap <buffer> <C-T> :!xelatex %<CR> :below split out/%:r.log<CR>
	autocmd FileType tex nnoremap <buffer> T :!open -a Skim out/%:r.pdf<CR><CR>
	autocmd BufWritePost *.tex :silent exec '!xelatex -output-directory out %'
augroup END

autocmd!

colorscheme iceberg
syntax on
