execute pathogen#infect()
syntax on
filetype plugin indent on
set noswapfile
set expandtab
let mapleader = ","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/node_modules/*,*.pyc
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
" Window Switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set wildignore+=*/node_modules/*,*.pyc
set updatetime=100
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set number
set relativenumber
nmap <F8> :TagbarToggle<CR>
let g:airline#extensions#tagbar#enabled = 1
let g:airline_theme='simple'
let g:rustfmt_autosave = 1

" FileType Settings
au FileType html setlocal shiftwidth=2 tabstop=2
au FileType python setlocal shiftwidth=4 tabstop=4
au FileType pug setlocal shiftwidth=4 tabstop=4
au FileType javascript setlocal shiftwidth=2 tabstop=2
au FileType typescript setlocal shiftwidth=2 tabstop=2
au FileType ruby setlocal shiftwidth=2 tabstop=2
au FileType haml setlocal shiftwidth=2 tabstop=2

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
