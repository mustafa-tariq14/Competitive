runtime! debian.vim

set guioptions+=a

autocmd filetype python nnoremap <F11> :w <bar> %y+ <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype java nnoremap <F11> :w <bar> %y+ <bar> exec '!javac '.shellescape('%').' && java '.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F11> :w <bar> %y+ <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F11> :w <bar> %y+ <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set termguicolors
set laststatus=2
set number
set background=dark

syntax on
colorscheme onedark

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

