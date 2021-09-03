syntax enable
colorscheme monokai
filetype plugin on

let g:OmniSharp_timeout=5
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_server_use_mono = 1

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
set cursorcolumn
set backspace=indent,eol,start

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
nmap <F6> :NERDTreeToggle<Toggle><CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
let g:NERDTreeWinSize=20

hi TabLineFill ctermfg=Black
hi TabLineSel ctermfg=Black ctermbg=DarkGreen
hi TabLine ctermfg=Grey
set hidden
noremap <C-m> :bprevious<CR>
noremap <C-l> :bnext<CR>


let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

let g:ale_linters = { 'javascript': ['eslint']  }

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

if !has('gui_running')
   set t_Co=256
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'prettier/vim-prettier', { 'do': 'yarn install','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'w0rp/ale'
Plug 'OmniSharp/omnisharp-vim'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe',{'commit':'d98f896'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-buftabline'

call plug#end()

