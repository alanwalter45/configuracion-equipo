colorscheme molokai
syntax enable
syntax on
set termguicolors
filetype plugin indent on
set encoding=UTF-8
set number
set ruler
set noswapfile
set noshowmode
set laststatus=2
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set cursorline
set backspace=indent,eol,start
nnoremap <silent><c-s> :update<cr>
"vnoremap <silent> <c-s> <c-c>:update<cr>
"inoremap <silent> <c-s> <c-o>:update<cr>
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
nnoremap <F3> :noh<CR>
nmap <F4> :NERDTreeToggle<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
let g:NERDTreeWinSize=25
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let g:go_highlight_types =1
let g:go_highlight_fields = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators =1
let g:go_highlight_functions =1
let g:go_highlight_function_calls =1
let g:go_highlight_build_constraints =1
let g:go_highlight_generate_tags =1

if !has('gui_running')
   set t_Co=256
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'prettier/vim-prettier', { 'do': 'yarn install','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'her/synicons.vim'
Plug 'itchyny/vim-gitbranch'
call plug#end()

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

