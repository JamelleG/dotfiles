call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
call plug#end()

let mapleader = ","
noremap <leader>w :w<cr>
set relativenumber

