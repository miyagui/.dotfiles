set nocompatible
filetype plugin on
syntax on

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'farmergreg/vim-lastplace'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'

call plug#end()

nnoremap <leader>n 	  :NERDTreeFocus<CR>
nnoremap <C-t>				:NERDTreeToggle<CR>
nnoremap <C-f>				:NERDTreeFind<CR>
" Move up/down editor lines includes wrapping lines
nnoremap j gj
nnoremap k gk
nnoremap <up> gk
nnoremap <down> gj
nnoremap <C-g>        :Goyo<CR>

let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/', 'name': 'miya wiki', 'syntax': 'markdown', 'ext': '.md', 'auto_diary_index': 1, 'auto_toc': 1}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown', '.wiki': 'default'}

let g:NERDTreeGitStatusWithFlags = 	1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

set encoding=utf-8
set relativenumber number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a
set ruler

" Allow hidden buffers
set hidden
set ttyfast
set noshowmode
set showcmd
set t_Co=256
set background=dark
set noswapfile
set nobackup
set nocursorcolumn
set nocursorline

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Cursor motion
set scrolloff=3
set matchpairs+=<:> " use % to jump between pair

" Sync open file with NT
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBuffName") && (bufwinnr(t:NERDTreeBuffName) != -1)
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Press esc to disable search highlights
map <esc> :noh <CR>

" search mapping centered for free
nnoremap n nzzzv
nnoremap N Nzzzv

" do not show stupid q: window
map q: :q
map q/ :q

" persistent undo
if has('persistent_undo')
  set undofile
  set undodir=~/.cache/vim
endif
