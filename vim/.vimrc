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

" Colorscheme
Plug 'sainnhe/sonokai'

" Fugitive (git)
Plug 'tpope/vim-fugitive'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" New autocomplete framework
Plug 'maralla/completor.vim'

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

" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
" dictionary, source files, and completor to find matching words to complete.

" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction

" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()
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

" Disable shortmessage on stausbar when completion show.
set shortmess+=c
