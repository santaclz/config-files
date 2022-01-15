" finally copy paste has been enabled
set number
set hlsearch
set clipboard=unnamedplus
syntax enable

" set tab width
set ts=4
set sw=4

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
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tikhomirov/vim-glsl'
Plugin 'https://github.com/freeo/vim-kalisi'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'dylanaraps/wal.vim'
Plugin 'tpope/vim-surround'
Plugin 'rust-lang/rust.vim'
Plugin 'preservim/nerdtree'
Plugin 'https://tpope.io/vim/repeat.git'
Plugin 'mileszs/ack.vim'

" FZF
"Plugin 'junegunn/fzf.vim'

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
let g:airline_powerline_fonts = 0
let g:airline_symbols_ascii = 1

" files to use glsl syntax
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

"let g:ycm_semantic_triggers =  { 'cpp,objcpp' : ['->', '.', '::', 're!gl'] }
"let g:ycm_global_ycm_extra_conf = '/home/nya/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"set completeopt-=preview


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" tab movement
nmap <C-l> :tabn<cr>
nmap <C-h> :tabp<cr>

set tabpagemax=100

" change cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set cursorline
hi CursorLine cterm=NONE
hi CursorLine ctermfg=NONE
hi CursorLine ctermbg=60

hi CursorLineNR cterm=NONE
hi CursorLineNR ctermfg=2
hi CursorLineNR ctermbg=60
