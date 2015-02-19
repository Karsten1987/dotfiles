if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
let &cpo=s:cpo_save
unlet s:cpo_save

set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set listchars=tab:>-,trail:♥
set nomodeline
set printoptions=paper:letter
"set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
" set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set window=54
" vim: set ft=vim :
set number
set ls=2
set list
colorscheme wombat256mod
set ttyfast
set noautoindent
" toggle formatting options for raw-paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" vundle config "
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_left_sep='||'
let g:airline_right_sep='||'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


Plugin 'sjl/gundo.vim'
" set f5 for toggling undo menu"
nnoremap <F5> :GundoToggle<CR>

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
