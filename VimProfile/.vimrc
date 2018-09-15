set number
syntax enable
syntax on
" set guifont=Monac\ 12
set history=2000
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoread

" set nobackup
" set noswapfile

set cursorline
set cursorcolumn

" set mouse=a

set ruler

set showcmd

set showmode

set laststatus=2

set nowrap

set autoindent
set cindent
set smartindent

set tabstop=4

set nocompatible              " be iMproved, required
filetype off                  " required

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


let g:NERDTreeShowIgnoredStatus = 1

let g:indentLine_setColors = 0

let g:indentLine_color_term = 239

let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

let g:indentLine_char = 'c'

let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

let g:indentLine_enabled = 0

autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

let g:autopep8_ignore="E501,W293"

let g:autopep8_select="E501,W293"

let g:autopep8_pep8_passes=100

let g:autopep8_max_line_length=79

let g:autopep8_aggressive=1

let g:autopep8_aggressive=2

let g:autopep8_indent_size=2

let g:autopep8_disable_show_diff=1

let g:autopep8_diff_type='horizontal'

let g:autopep8_diff_type='vertical'

let g:autopep8_on_save = 1

let g:indentLine_char='┆'

let g:indentLine_enabled = 1

" F5 run python program
"map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
"function RunPython()
"		let mp = &makeprg
"		let ef = &errorformat
"		let exeFile = expand("%:t")
"		setlocal makeprg=python\ -u
"		set efm=
"		silent make %
"		copen
"		let &makeprg = mp
"		let &errorformat = ef
"endfunction

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
"set completeopt=logest,menu
let g:ycm_path_to_python_interpreter='/usr/bin/python3.6'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_strings = 1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree-git-plgin
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" indentline
Plugin 'Yggdroot/indentLine'

" vim powerline
Plugin 'Lokaltog/vim-powerline'

" youcompleteme
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
