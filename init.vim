set nocompatible


call plug#begin(stdpath('data') . '/plugged')
"Iceburg color scheme
Plug 'cocopon/iceberg.vim'
"AutoCompletion
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
"Another plugin for autocompletion
Plug 'SirVer/ultisnips'
"Fancy status bar
Plug 'itchyny/lightline.vim'

"Language Support
"LaTeX
Plug 'lervag/vimtex'
"Python
Plug 'python-mode/python-mode', {'for': 'python', 'branch': 'develop'}
"Required for markdown
Plug 'godlygeek/tabular'
"Markdown
Plug 'plasticboy/vim-markdown'
"Markdown Preview
Plug 'iamcco/markdown-preview.nvim'

call plug#end()


if exists("b:current_syntax")
    finish
endif


set shiftwidth=4
set tabstop=4
set cursorline
set number
set relativenumber
set nofoldenable
set noshowmode
"set clipboard=unnamed


"YouCompleteMe stuff
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.local/share/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_filetype_whitelist = {'python': 1, 'cpp': 1}
"Ultisnip stuff
let g:UltiSnipsSnippetDirectories = ['~/.local/share/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"python-mode stuff
let g:pymode_python = 'python3'
let g:pymode_lint_cwindow = 0
"vimtex stuff
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {'build_dir': 'build'}
let g:tex_flavor = 'latex'
"markdown stuff
let g:vim_markdown_math = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_echo_preview_url = 1
"Lightline
let g:lightline = {'colorscheme': 'wombat'}


"MapKeys
let mapleader = "z"

nnoremap <silent> <leader>sv :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>z :call histdel('/')<cr>

nnoremap s @@


" let g:loaded_youcompleteme = 1


augroup YCM
	autocmd!
	autocmd FileType markdown,tex,snippets let g:ycm_key_list_select_completion=[]
	autocmd FileType markdown,tex,snippets let g:ycm_key_list_previous_completion=[]
	autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END

augroup LaTeX
	autocmd!
	autocmd FileType tex nnoremap <buffer> <C-T> :!xelatex %<CR> :below split out/%:r.log<CR>
	autocmd FileType tex nnoremap <buffer> T :!open -a Skim out/%:r.pdf<CR><CR>
	autocmd BufWritePost *.tex :silent exec '!xelatex -output-directory out %'
augroup END

augroup OTHERS
	autocmd!
	autocmd BufReadPost *
		 \ if line("'\"") > 0 && line("'\"") <= line("$") |
		 \   exe "normal! g`\"" |
		 \ endif
augroup END

autocmd!


colorscheme iceberg
syntax on
