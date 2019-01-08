set number
set history=5000
set cursorline
set cursorcolumn
set ruler
set autoread
set showmatch
set encoding=utf-8
set fenc=utf-8
set mouse=a
set hlsearch
set showcmd
set laststatus=2
set smartindent
set showmode
set nocompatible              " be iMproved, required
filetype indent on
filetype plugin on
filetype plugin indent on
filetype off                  " required

syntax on
syntax enable


" ===============================python configuration=======================================
" au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" ===============================python configuraiton end===================================


" ===============================nerdtree plugin configuration==============================

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ===============================nerdtree plugin configuration end========================


" ===============================nerdtree-git-plugin configuration========================

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

" ===============================nerdtree-git-plugin configuration end======================


" ===============================indentLine plugin configuration============================
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 0
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
let g:vim_json_syntax_conceal = 0 "or run :IndentLinesDisable
" ===============================indentLine plugin configuration end========================


" ===============================vim-power-line plugin configuration========================
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_cache_dir = simplify(expand('<sfile>:p:h') .'/..')
let g:Powerline_cache_enabled = 0
let g:Powerline_symbols = 'fancy'
let g:Powerline_mode_n = 'NORMAL'
let g:Powerline_theme = 'solarized256'
let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_stl_path_style = 'full'
let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
let g:Powerline_symbols_override = {
        \ 'BRANCH': [0x2213],
        \ 'LINE': 'L',
        \ }
" ===============================vim-power-line plugin configuration end====================

" ================================sysntastic plugin configuration===========================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_<filetype>_checkers = ['<checker-name>']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_mri_args = "--my --args --here"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_enable_perl_checker = 1

nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>

cabbrev <silent> bd <C-r>=(getcmdtype()==#':' && getcmdpos()==1 ? 'lclose\|bdelete' : 'bd')<CR>

function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction

autocmd FileType javascript let b:syntastic_javascript_jscs_args =
    \ get(g:, 'syntastic_javascript_jscs_args', '') .
    \ FindConfig('-c', '.jscsrc', expand('<afile>:p:h', 1))

" ================================sysntastic plugin configuration end=======================


" ================================flake8 plugin configuration===============================
"call flake8#Flake8UnplaceMarkers()

autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

" let g:flake8_cmd="/opt/strangebin/flake8000"
let g:flake8_quickfix_location="topleft"
let g:flake8_quickfix_height=7
let g:flake8_show_quickfix=0  " don't show
" let g:flake8_show_quickfix=1  " show (default)
let g:flake8_show_in_gutter=0  " don't show (default)
" let g:flake8_show_in_gutter=1  " show
let g:flake8_show_in_file=0  " don't show (default)
" let g:flake8_show_in_file=1  " show
let g:flake8_max_markers=500  " (default)

" flake8_error_marker='EE'     " set error marker to 'EE'
" flake8_warning_marker='WW'   " set warning marker to 'WW'
" flake8_pyflake_marker=''     " disable PyFlakes warnings
" flake8_complexity_marker=''  " disable McCabe complexity warnings
" flake8_naming_marker=''      " disable naming warnings

highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

autocmd BufWritePost *.py call Flake8()
"=================================flake8 plugin configuration end===========================

" ================================set color theme===========================================
set background=dark
" colorscheme solarized
" ================================set color theme end=======================================

" ================================python with virtualenv support============================
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir = os.environ['VIRTUAL_ENV']
"     activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"     execfile(activate_this, dict(__file__=activate_this))
" EOF

let pipenv_venv_path = system('pipenv --venv')

if shell_error == 0
  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  let g:ycm_python_binary_path = venv_path . '/bin/python'
else
  let g:ycm_python_binary_path = 'python'
endif
"=================================python with virtualenv support end========================


" ================================F5 run program============================================
nnoremap <F5> :call CompileRunGcc()<cr>

func! CompileRunGcc()
    exec 'w'
    if &filetype ==# 'c'
        exec 'gcc -o3 % -o %<'
        exec '!time ./%<'
    elseif &filetype ==# 'cpp'
        exec '!g++ -o3 % -o %<'
        exec '!time ./%<'
    elseif &filetype ==# 'java'
        exec '!javac %'
        exec '!time java %<'
    elseif &filetype ==# 'sh'
        :!time bash %
    elseif &filetype ==# 'python'
        if search('@profile')
            exec 'AsyncRun kernprof -l -v %'
            exec 'copen'
            exec 'wincmd p'
        elseif search('set_trace()')
            exec '!python3 %'
        else
            exec 'AsyncRun -raw python3 %'
            exec 'copen'
            exec 'wincmd p'
        endif
    elseif &filetype ==# 'html'
        exec '!firefox % &'
    elseif &filetype ==# 'go'
        ' exec '!go build %<'
        exec '!time go run %'
    elseif &filetype ==# 'mkd'
        exec '!~/.vim/markdown.pl % > %.html &'
        exec '!firefox %.html &'
    endif
endfunc
" ================================F5 run program============================================


" ================================rainbow_parentheses configuration=========================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
" =================================rainbow_parentheses configuration end====================


" =================================youcompleteme configuration==============================
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
autocmd Filetype python,c,cpp,Java,vim nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_python_binary_path = 'python'
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_max_num_candidates = 30
let g:ycm_complete_in_strings=1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filetype_whitelist = {
            \ 'c':1,
            \ 'cpp':1,
            \ 'objc':1,
            \ 'python': 1,
            \ 'Java': 1,
            \ 'sh':1,
            \ 'zsh':1,
            \ 'zimbu':1,
            \ 'vim':1,
            \ }
" =================================youcompleteme configuration end==========================

" ==================================vundle manager==========================================

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

" sysntastic
Plugin 'vim-syntastic/syntastic'

" indentpython.vim
Plugin 'vim-scripts/indentpython.vim'

" vim-flake8
Plugin 'nvie/vim-flake8'

" vim-colrs-solarized
Plugin 'altercation/vim-colors-solarized'

" zenburn theme
Plugin 'jnurmine/Zenburn'

" rainbow parentheses
Plugin 'kien/rainbow_parentheses.vim'

" python syntax highlighting
Plugin 'kh3phr3n/python-syntax'

" youcompleteme
Plugin 'Valloric/YouCompleteMe'

" vim powerline
Plugin 'Lokaltog/vim-powerline'

"base16-vim colorscheme
Plugin 'chriskempson/base16-vim'

Plugin 'mhartington/oceanic-next'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
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
" ===============================end========================================================
