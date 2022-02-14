call plug#begin('~/.vim/plugged')

" Vim airline makes Vim look so cool.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Julia support
Plug 'JuliaEditorSupport/julia-vim'

" Extended C++ support
Plug 'bfrg/vim-cpp-modern'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autocomplete
Plug 'vim-scripts/AutoComplPop'

" Colorscheme
Plug 'sainnhe/sonokai'

" Fugitive (git)
Plug 'tpope/vim-fugitive'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

syntax on

" Trim trailing whitespaces by pressing {F5}
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Copy and paste from clipboard.
" This requires sudo apt-get install vim-gtk
map <C-c> "+y
map <C-v> "+p

" Moving lines like Sublime or VSCode
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Highlight current line in Insert mode only.
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Editor's color scheme
colorscheme sonokai
let g:sonokai_style = 'maia'

" Airline configuration
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme='sonokai'
let g:lightline= {
  \ 'colorscheme' : 'sonokai',
  \ 'active' : {
  \   'left' :[ [ 'mode', 'paste' ],
  \             ['gitbranch', 'readonly', 'filename', 'modified'] ]
  \ },
  \ 'component_function' : {
  \   'gitbranch' : 'FugitiveHead'
  \ },
  \ }

" NERDTree
" Encoding for file icons
set encoding=UTF-8

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" zsh
" Set default shell to zsh
set shell=zsh


" Editor configuration

set t_Co=256
set cursorline

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
