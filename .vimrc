set nocompatible              " required
filetype off                  " required
filetype plugin on
"set grepprg=grep\ -nH\$*
let g:tex_flavor='latex'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Set the clipboard so that we can paste from system
set clipboard=unnamed

" fix meta-keys which generate <Esc>a .. <Esc>z
"let c='a'
"while c <= 'z'
"  exec "set <A-".c.">=\e".c
"  exec "imap \e".c." <A-".c.">"
"  let c = nr2char(1+char2nr(c))
"endw

set timeout ttimeoutlen=50
"Adjust indentation for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4
    "\ set softtabstop=4 "get error message
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

    
"Flagging unecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Set utf8 encoding
set encoding=utf-8

"Map the Leader key
let mapleader=" "

"Autocomplete window goes away when done with it
let g:ycm_autoclose_preview_window_after_completion=1

"Change goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"Pretty code
let python_highlight_all=1
syntax on

"Set color scheme for terminal or gui
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
colorscheme wal 
"Run python code directly in vim
nnoremap <F5> <esc>:w<enter>:!python2 %:p<enter>
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
"Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'nvie/vim-flake8'
"Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'dylanaraps/wal.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
""Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"
"
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
