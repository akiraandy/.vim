if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('preservim/nerdtree')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('tpope/vim-commentary')
  call dein#add('rust-lang/rust.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('chiel92/vim-autoformat')
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('elixir-editors/vim-elixir')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('jparise/vim-graphql')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('tpope/vim-rails')
  call dein#add('leafOfTree/vim-svelte-plugin')
  call dein#add('ianks/vim-tsx')
  call dein#add('sonph/onehalf', {'rtp': 'vim'})
  call dein#add('evanleck/vim-svelte')
  call dein#add('slashmili/alchemist.vim')
  call dein#add('mhinz/vim-mix-format')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('dense-analysis/ale')

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
"
execute pathogen#infect()
syntax on
filetype plugin indent on
set noswapfile
set expandtab
let mapleader = ","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" CTRL-P
set wildignore+=*/node_modules/*,*.pyc
" Window Switching
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
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
let g:rustfmt_autosave = 1
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:mix_format_on_save = 1

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
let NERDTreeShowHidden=1
