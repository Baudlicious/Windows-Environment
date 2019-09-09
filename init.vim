syntax enable
filetype plugin on
set number relativenumber
set encoding=utf-8
set fileencoding=utf-8
set visualbell
set ruler
set hlsearch
set guifont=Iosevka:h12
set t_Co=256
set background=dark
set pastetoggle=<F2>
"set spell
color ayu
autocmd FileType python setlocal autoindent softtabstop=4 tabstop=4 shiftwidth=4 expandtab

"Wrapped lines behave like normal lines when using j,k
nnoremap j gj
nnoremap k gk
" Line length 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
"Ctrl-L to clear highlighting
nnoremap <C-L> :nohl<ESC><C-L>

"Based on file type save file and run it..
autocmd FileType rust map <buffer> <F5> <Esc>:w<CR>:!clear;cargo run<CR>
autocmd FileType python map <buffer> <F5> <Esc>:w<CR>:!clear;python3 %<CR>
autocmd FileType c map <buffer> <F5> <Esc>:w<CR>:!cc % & ./a.out<CR>
autocmd FileType sh map <buffer> <F5> <Esc>:w<CR>:!./%<CR>

"Filetype Specific Line widths
au BufRead,BufNewFile *.adoc setlocal textwidth=80
au BufRead,BufNewFile *.txt setlocal textwidth=80
au BufRead,BufNewFile *.md setlocal textwidth=80


" Escapes with the press of jk in insert mode 
inoremap jk <Esc> 

" Auto install plug if not present
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
"Plug stuff
"call plug#begin('~/.vim/plugged')
"Plug 'rust-lang/rust.vim'
"Plug 'vim-airline/vim-airline/'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'dracula/vim'
"call plug#end()
" 
" !!!!  air-line !!!!
let g:airline_powerline_fonts = 1
let g:airline_theme = 'angr'

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
set cursorline
