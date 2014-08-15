"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	______ _________    ______            
"	___  //_/__(_)_ |  / /__(_)______ ___ 
"	__  ,<  __  /__ | / /__  /__  __ `__ \
"	_  /| | _  / __ |/ / _  / _  / / / / /
"	/_/ |_| /_/  _____/  /_/  /_/ /_/ /_/ 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vundle Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Vundle Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Debugging
"Plugin 'jaredly/vim-debug'
"Plugin 'joonty/vdebug.git'

" Finding
Plugin 'kien/ctrlp.vim' ""

" Buffer Explorer
Plugin 'fholgado/minibufexpl.vim' ""

" Color Theme
Plugin 'tomasr/molokai' ""

" Folder Navigator
Plugin 'scrooloose/nerdtree' ""

" Syntax Checker
Plugin 'scrooloose/syntastic' ""

" Class Browser
Plugin 'majutsushi/tagbar' ""

" Commenter
Plugin 'scrooloose/nerdcommenter'

" Status Bar
Plugin 'bling/vim-airline' ""

" Auto Completion
Plugin 'davidhalter/jedi-vim' ""
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'


" All of your Plugins must be added before the following line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Defaults for Vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start

set history=50
set ruler

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

if has('gui_running')
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("syntax")
    syntax on
endif

let mapleader = ","

set number

set mouse=a

set clipboard=unnamedplus

"" KiVim 
function Ki()
	:NERDTreeFocus
	:TagbarOpen
endfunction
map <Leader>ki :exec Ki()<CR>
command Ki exec Ki()

function Kill()
	:NERDTreeClose
	:TagbarClose
endfunction
map <Leader>kl :exec Kill()<CR>
command Ki exec Ki()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Tweaks for Plugins
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" ctrlp.vim

"" minibufexpl.vim
map <Leader>n :MBEbn<CR>
map <Leader>b :MBEbb<CR>
map <Leader>. :MBEbd<CR>

"" molokai
"let g:molokai_original = 1
colorscheme molokai
set t_Co=256

"" nerdtree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"" syntastic
let g:syntastic_python_checkers = ['flake8']
map <Leader>sp :SyntasticCheck python<Esc>

"tagbar
map <Leader>tt :TagbarToggle <Esc>

"" nerdcommenter

"" vim-airline
set noshowmode
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"" jedi-vim settings from github
" Jedi is by default automatically initialized. If you don't want that I suggest you disable the auto-initialization in your .vimrc:

"let g:jedi#auto_initialization = 0

" There are also some VIM options (like completeopt and key defaults) which are automatically initialized, but you can change all of them:

"let g:jedi#auto_vim_configuration = 0

" If you are a person who likes to use VIM-buffers not tabs, you might want to put that in your .vimrc:

let g:jedi#use_tabs_not_buffers = 0

" If you are a person who likes to use VIM-splits, you might want to put this in your .vimrc:

"let g:jedi#use_splits_not_buffers = "left"

" This options could be "left", "right", "top" or "bottom". It will decide the direction where the split open.

" Jedi automatically starts the completion, if you type a dot, e.g. str., if you don't want this:

"let g:jedi#popup_on_dot = 0

" Jedi selects the first line of the completion menu: for a better typing-flow and usually saves one keypress.

"let g:jedi#popup_select_first = 0

" Here are a few more defaults for actions, read the docs (:help jedi-vim) to get more information. If you set them to "", they are not assigned.

let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

" Finally, if you don't want completion, but all the other features, use:

"let g:jedi#completions_enabled = 0

" docstring window to popup during completion
"autocmd FileType python setlocal completeopt-=preview


"" delimitMate


"" supertab
