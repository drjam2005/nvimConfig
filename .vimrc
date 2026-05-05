call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'drsooch/gruber-darker-vim'
Plug 'chriskempson/base16-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

call plug#end()

syntax on
set wrap!
set relativenumber
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=4
set signcolumn=no
set backspace=indent,eol,start
set autochdir
set laststatus=2

set termguicolors
set t_Co=256
set guicursor=a:block
colorscheme alduin
" colorscheme base16-grayscale-dark
" hi Function guifg=#ffafaf
hi Normal guibg=NONE ctermbg=NONE
hi String guibg=NONE
hi LineNR guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE
hi StatusLine guibg=#cdd6d6 guifg=#221111
hi Terminal guibg=NONE
syntax match cCustomFunc /\w\+\s*(/me=e-1
hi def link cCustomFunc Function

" inoremap <C-Space> <C-n>

inoremap <C-Space> <C-x><C-o><C-n><C-n>
let g:lsp_signature_help_enabled = 0
let g:lsp_signature_help_delay = 0
let g:lsp_peek_definition_enabled = 0

let g:asyncomplete_auto_completeopt = 0
let g:lsp_show_message_request_enabled = 0

nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap K :LspHover<CR>

autocmd FileType * setlocal omnifunc=lsp#complete
