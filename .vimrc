let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }

Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'

call plug#end()

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_compiler_latexmk = { 'aux_dir' : '/home/james/.texfiles', 'build_dir': 'out'}

let g:lsp_document_highlight_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0

syntax on
set wrap!
set relativenumber
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=4
set signcolumn=no

set termguicolors
set t_Co=256
colorscheme GruberDarker
hi Normal ctermbg=NONE guibg=NONE
hi Macro guifg=#ffdd33
hi PreProc guifg=#ffdd33
hi LineNr ctermbg=NONE ctermfg=gray guibg=NONE guifg=#808080
hi VertSplit cterm=NONE term=NONE ctermbg=NONE guibg=NONE guifg=#676767
hi EndOfBuffer ctermbg=NONE guibg=NONE 
hi Function guifg=#ffffff
hi LspWarningHighlight guibg=#303030
hi LspErrorHighlight guibg=#601212
hi cppSTLvariable guifg=#ffffff
hi StatusLine   gui=NONE guifg=#d0d0d0 guibg=#1c1c1c
hi StatusLineNC gui=NONE guifg=#707070 guibg=#121212

let mapleader = " "

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
