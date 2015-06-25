color Tomorrow-Night
syntax on
runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()
filetype plugin indent on
set wildmode=longest,list,full
set et
set hidden
autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
set shiftwidth=2
imap <Tab> <Esc>
noremap <C-z> :w<CR><C-z>
map gt :HdevtoolsType<CR>
map gh :HdevtoolsClear<CR>
map gi :HdevtoolsInfo<CR>
map gl :GhcModLint<CR>
map tt :TagbarToggle<CR>
map <C-j> jzz
map <C-k> kzz
let loaded_matchparen = 2
let g:haskell_conceal_wide = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_conceal = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_haskell_checkers=['hdevtools']
let g:syntastic_lhaskell_checkers=['hdevtools']
let g:syntastic_check_on_wq=0
let g:syntastic_echo_current_error=0
set nofoldenable
set incsearch
highlight Search ctermbg=black ctermfg=gray
highlight Visual ctermfg=black ctermfg=white
highlight Normal ctermfg=black ctermfg=gray
let g:hdevtools_options = '-g-fdefer-type-errors -g-isrc'
" set iskeyword=a-z,A-Z,_,.,39
set tags=tags;
autocmd FileType lhaskell setlocal formatoptions+=ro
set laststatus=0
set noswapfile
