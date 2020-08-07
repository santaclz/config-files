" finally copy paste has been enabled
set clipboard=unnamedplus

" enable mouse movement
set mouse=a

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tikhomirov/vim-glsl'
Plugin 'https://github.com/freeo/vim-kalisi'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'davidhalter/jedi-vim'
Plugin 'dylanaraps/wal.vim'

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
"colorscheme getafe
colorscheme wal
set t_Co=256
" set background to transparent
"hi Normal guibg=NONE ctermbg=NONE

" set black background
"hi Normal ctermbg=16 guibg=#000000
"hi LineNr ctermbg=16 guibg=#000000

" airline theme
let g:airline_theme='wal'

"let g:OmniSharp_server_stdio = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" files to use glsl syntax
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

let g:ycm_semantic_triggers =  { 'cpp,objcpp' : ['->', '.', '::', 're!gl'] }

" tab movement
nmap <C-l> :tabn<cr>
nmap <C-h> :tabp<cr>
