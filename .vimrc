call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on

colorscheme onehalfdark

" Airline configuration

let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts=1
let g:lightline= {
  \ 'colorscheme' : 'onehalfdark',
  \ 'active' : {
  \   'left' :[ [ 'mode', 'paste' ],
  \             ['gitbranch', 'readonly', 'filename', 'modified'] ]
  \ },
  \ 'component_function' : {
  \   'gitbranch' : 'FugitiveHead'
  \ },
  \ }

" Editor configuration

set t_Co=256
set cursorline
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set colorcolumn=80
