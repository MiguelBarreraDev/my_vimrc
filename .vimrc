"""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' " scheme
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'alvan/vim-closetag' " Close html tag
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intelligens, autocomplet
Plug 'preservim/vimux'
Plug 'christoomey/navegador-vim-tmux'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
" ident
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
autocmd Filetype css setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

" Copy and paste in system variable
set ff=unix 

"Show linenumbers
set number
set ruler
set relativenumber

" Dictionary
set spell
set spelllang=en

" Set Proper Tabs
set tabstop=8
set shiftwidth=8
set smarttab
set noexpandtab " Use tabs, not spaces 

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" Theme and Styling
set t_Co=256
set background=dark

" Color Scheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" highlight Normal ctermbg=NONE
""""""""""""""""""""""""""""""""""""""
" Autocmd
""""""""""""""""""""""""""""""""""""""
"Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" nnoremap
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" emmet command
let g:user_emmet_leader_key='<C-Y>'
