" Plug Shit
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }
Plug 'sainnhe/everforest'
Plug 'nordtheme/vim'
Plug 'ewilazarus/preto'

call plug#end()

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_compiler_latexmk = { 'aux_dir' : '/home/james/.texfiles', 'build_dir': 'out'}

syntax on
set t_Co=256
set relativenumber
set number
set shiftwidth=4
set tabstop=8
set scrolloff=4

colorscheme slate
highlight Normal ctermfg=248 ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE
highlight MatchParen ctermbg=yellow ctermfg=black
let mapleader = " "
nnoremap <Leader>t :Ex<CR>
nnoremap <C-S-d> <C-u>zz
nnoremap <C-d> <C-d>zz

augroup my_netrw_mappings
  autocmd!
  autocmd FileType netrw call s:setup_netrw_keys()
augroup END

function! s:setup_netrw_keys()
  nnoremap <buffer> <C-q> :bd<CR>
  nmap <buffer> h -
  nmap <buffer> l <CR>
endfunction

