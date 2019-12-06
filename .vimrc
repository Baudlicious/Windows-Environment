filetype plugin on
set number relativenumber
set encoding=utf-8
set fileencoding=utf-8
set visualbell
set ruler
set hlsearch
set background=dark
set guifont=Inconsolata-dz\ for\ Powerline:h12
set t_Co=256
set pastetoggle=<F2>
colorscheme gruvbox
autocmd FileType python setlocal autoindent softtabstop=4 tabstop=4 shiftwidth=4 expandtab

" GUI Vim for Windows
set guioptions -=m
set guioptions -=T
set guioptions -=r

"Wrapped lines behave like normal lines when using j,k
nnoremap j gj
nnoremap k gk

" Highlight Line length 80 characters
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/

"Ctrl-L to clear highlighting
nnoremap <C-L> :nohl<ESC><C-L>

" Cursor Settings
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Blank Line Tingz
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

"Based on file type save file and run it..
autocmd FileType rust map <buffer> <F5> <Esc>:w<CR>:!cls;cargo run %<CR>
autocmd FileType go map <buffer> <F5> <Esc>:w<CR>:!cls;go run %<CR>
autocmd FileType python map <buffer> <F5> <Esc>:w<CR>:!python3 %<CR>
autocmd FileType c map <buffer> <F5> <Esc>:w<CR>:!cc % & ./a.out<CR>
autocmd FileType sh map <buffer> <F5> <Esc>:w<CR>:!./%<CR>

" Vim 8.1 Term tests
autocmd FileType go map <buffer> <F5> <Esc>:w<CR>:term go run %<CR>


" Escapes with the press of jk in insert mode 
inoremap jk <Esc> 

"Plug stuff
call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline/'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 
Plug 'ajh17/VimCompletesMe' 
Plug 'PProvost/vim-ps1' 
Plug 'sheerun/vim-polyglot' 
call plug#end()
 

" !!!!  air-line !!!!
let g:airline_powerline_fonts = 1
let g:airline_theme = 'hybrid'

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

" Co Op Addons
"
nnoremap H :set cursorline!<CR>
