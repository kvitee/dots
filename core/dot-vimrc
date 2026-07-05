"--- Settings ---"

" Disable mouse
se mouse=

" Enable relative line numbers
se nu
se rnu

" Highlight 80th column
se cc=80

" Disable backup- and swapfiles
se nobk
se noswf

" Number of lines around cursor
se so=8

" File format and encoding
se ff=unix
se enc=utf-8

" Auto indents
se ai
se si

" Tab using spaces
se et

" Size of expanded tabs (real tabs are default)
se sts=2
se sw=2

" Wrap lines breaking by words
se wrap
se lbr

" Use 24-bit colors
se tgc

" Dark background
se bg=dark

" For corrent work in tmux
se term=xterm-256color

"--- Plugins ---"

" Begin Vim-Plug section
call plug#begin('~/.vim/plugged')

" Utils
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim'
Plug 'ayu-theme/ayu-vim'

" Language specific
Plug 'pangloss/vim-javascript'

" End Vim-Plug section
call plug#end()

"--- Colorschemes and highlighting ---"

" Colorscheme
colo gruvbox

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Javascript docs highlighting
let g:javascript_plugin_jsdoc = 1

"--- Netrw file explorer settings ---"

" Hide banner
let g:netrw_banner = 0

" Show tree instead of plain view
let g:netrw_liststyle = 3

" Split window when open file
let g:netrw_browse_split = 3

"--- Key mappings ---"

" Go to next or previous tab by L or H respectively
nn H gT
nn L gt

" Replace default f and F by Vim-Sneak commands
map f <Plug>Sneak_s
map F <Plug>Sneak_S
