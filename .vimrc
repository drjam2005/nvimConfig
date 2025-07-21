syntax on
set t_Co=256
set relativenumber
set number
set tabstop=4
set scrolloff=4

colorscheme desert
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

