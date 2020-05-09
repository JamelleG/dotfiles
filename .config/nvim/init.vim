call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-dirvish'
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

autocmd FileType yaml set tabstop=2 shiftwidth=2
