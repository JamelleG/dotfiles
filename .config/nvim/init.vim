call plug#begin('~/.local/share/nvim/plugged')
" Core Plugins

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File/Folder navigation 
Plug 'justinmk/vim-sneak'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Syntax
Plug 'sheerun/vim-polyglot'

" Git
Plug 'tpope/vim-fugitive'

" Qol plugins
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'


call plug#end()

let mapleader = ","

"vim-sneak settings
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

noremap <leader>w :w<cr>

" Set number defaults + logic overrides
set relativenumber
set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" Formatting
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on


" Filetypes (todo split out)
autocmd FileType yaml set tabstop=2 shiftwidth=2

"ranger settings
let g:ranger_replace_netrw = 1

" Coc settings
let g:coc_global_extensions = [
  \ 'coc-rust-analyzer',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-yaml'
  \ ]
