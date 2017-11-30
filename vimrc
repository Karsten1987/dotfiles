if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
let &cpo=s:cpo_save
unlet s:cpo_save

set clipboard=unnamed
set splitright
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
" set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" line formatting
set tabstop=2
set window=54
set shiftwidth=2
set colorcolumn=100

" clear trailing white
nnoremap <leader>clear :%s/\s\+$//<cr>:let @/=''<CR>

" vim: set ft=vim :
set number
set ls=3
set list
set term=xterm-256color
colorscheme wombat256mod
syntax on
set ttyfast
set noautoindent
" toggle formatting options for raw-paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" better search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

set laststatus=2
set statusline=%F
set title
" relateive line numbers
"set relativenumber

" forgot sudo?
cmap w!! w !sudo tee % >/dev/null

" vundle config "
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_left_sep='|'
let g:airline_right_sep='|'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_skip_empty_sections = 1

Plugin 'vim-syntastic/syntastic'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
nmap <F3> :NERDTreeFocus<CR>
let g:nerdtree_tabs_open_on_console_startup = 1
autocmd BufEnter * silent! lcd %:p:h'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_autoclose_preview_window_after_completion = 1

Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 50

Plugin 'sjl/gundo.vim'
" set f5 for toggling undo menu"
nnoremap <F5> :GundoToggle<CR>

Plugin 'mileszs/ack.vim'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = ''
let g:ctrlp_working_path_mode = ''
noremap <C-p> <Esc>:CtrlP ~/workspace<CR>

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
