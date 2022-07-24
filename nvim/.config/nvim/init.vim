set nocompatible
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

call plug#end()

nnoremap <leader>n 	  :NERDTreeFocus<CR>
nnoremap <C-t>				:NERDTreeToggle<CR>
nnoremap <C-f>				:NERDTreeFind<CR>
" Move up/down editor lines includes wrapping lines
nnoremap j gj
nnoremap k gk

let g:vimwiki_list = [{'auto_diary_index': 1}]
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
set showmode
set showcmd
set t_Co=256
set background=dark

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pair

" Sync open file with NT
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBuffName") && (bufwinnr(t:NERDTreeBuffName) != -1)
endfunction

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
