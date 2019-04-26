call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-abolish'
call plug#end()

let mapleader = ","
noremap <leader>w :w<cr>
set relativenumber
set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
