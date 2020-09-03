syntax enable
colorscheme monokai

filetype plugin on
let g:OmniSharp_timeout=5
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_highlight_types = 1

let g:OmniSharp_server_use_mono = 1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p


set number
set noswapfile
set noshowmode
set laststatus=2

nmap <F6> :NERDTreeToggle<Toggle><CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


let g:ale_linters = { 'javascript': ['eslint']  }

let g:OmniSharp_server_use_mono = 1

if !has('gui_running')
	  set t_Co=256
  endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'prettier/vim-prettier', { 'do': 'yarn install','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

Plug 'mattn/emmet-vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'alvan/vim-closetag'

Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'

Plug 'terryma/vim-multiple-cursors'

Plug 'leafOfTree/vim-vue-plugin'

Plug 'w0rp/ale'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'OmniSharp/omnisharp-vim'

" " Initialize plugin system
call plug#end()

