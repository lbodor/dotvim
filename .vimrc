color Tomorrow-Night
syntax on

runtime bundle/vim-pathogen/autoload/pathogen.vim 
call pathogen#infect()

let g:lightline = {
   \ 'colorscheme': 'wombat',
   \ }

set noshowmode
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

nmap <C-j> jzz
nmap <C-k> kzz

" (vim-unimpaired)
map ]d ]cz+
map [d [cz+

" edit file in the same directory
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>

" saveas file in the same directory
map ,s :saveas <C-R>=expand("%:p:h") . "/" <CR>

" find tag
map ,, :tag <C-R>="" <CR>

" (taglist.vim)
nmap <silent> <F2> :TlistToggle<CR>
let Tlist_WinWidth=60

" (eclim)
imap <C-i> <C-o>:JavaImport<CR><C-o>A
nmap <C-i> :JavaImport<CR>
let g:EclimCompletionMethod = 'omnifunc'

set wildmode=longest,list

" nmap j gj
" nmap k gk

hi Visual ctermfg=black ctermbg=gray
hi Pmenu ctermfg=black ctermbg=brown
set completeopt=menu,longest

map gt :HdevtoolsType<CR>
map gh :HdevtoolsClear<CR>
map gi :HdevtoolsInfo<CR>
map gl :GhcModLint<CR>
map tt :TagbarToggle<CR>

" (sytanstic)
let g:syntastic_auto_loc_list=1
let g:haskell_conceal_wide = 0
let g:haskell_conceal_enumerations = 0
let g:haskell_conceal = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_haskell_checkers=['hdevtools']
let g:syntastic_lhaskell_checkers=['hdevtools']
let g:syntastic_check_on_wq=0
let g:syntastic_echo_current_error=0

set nrformats=octal,hex,alpha
" set iskeyword=a-z,A-Z,_,.,39 " breaks fugitive diff
set shortmess+=A
set t_Co=256

" highlighting group under the curosr
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

imap <C-x>/ <C-x>/<BS>
nmap <Leader>s :source ~/.vimrc
autocmd Filetype gitcommit setlocal spell textwidth=72

" no folding
au WinEnter * set nofen "no folding in vimdiff
au WinLeave * set nofen "no folding in vimdiff
set nofoldenable

" spread out and insert (unimpaired)
map []<space> [<space>k]<space>o
map ][<space> ]<space>j[<space>O

" vimdiff colors
highlight DiffAdd cterm=none ctermfg=fg ctermbg=darkCyan gui=none guifg=fg guibg=Blue
highlight DiffDelete cterm=none ctermfg=fg ctermbg=darkCyan gui=none guifg=fg guibg=Blue
highlight DiffChange cterm=none ctermfg=fg ctermbg=darkCyan gui=none guifg=fg guibg=Blue
highlight DiffText cterm=none ctermfg=bg ctermbg=White gui=none guifg=bg guibg=White

set diffopt+=vertical

let g:jedi#popup_on_dot = 0

" invert comments (tcomment.vab)
let @i = 'gcc'
map gi :normal @i<CR>

set wildmode=longest,list,full
set expandtab

map tt :TagbarToggle<CR>
let loaded_matchparen = 2

set incsearch
highlight Search ctermbg=black ctermfg=gray
highlight Visual ctermfg=black ctermfg=white
highlight Normal ctermfg=black ctermfg=gray
let g:syntastic_haskell_hdevtools_args = '-g-fdefer-type-errors -g-isrc -g-Wall'
set tags=tags;/,codex.tags;/
set laststatus=0
set noswapfile

set hidden
autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete

