" ### startup ###
" use vim and not vi default options
set nocompatible

" enable lexical highlighting
syntax enable

" add syntax highligth and enable indentation config depending on the language
filetype plugin indent on

" show number counted relatively to the cursor position
set relativenumber

" disable all mouse event
set mouse-=a

" enable menu auto completion similar to bash
set wildmode=list:longest

" save with <CTRL + S>
" normal mode
nnoremap <c-s> :w<CR>
" insert mode
inoremap <c-s> <Esc>:w<CR>
" visual mode
vnoremap <c-s> <Esc>:w<CR>

" ### rust ###
" format on save
let g:rustfmt_autosave = 1

" https://petermalmgren.com/rc-batch-day-9/
" As-you-type autocomplete
set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Required, explicitly enable Rust LS
let g:ale_linters = {
\	'rust': ['analyzer'],
\}
