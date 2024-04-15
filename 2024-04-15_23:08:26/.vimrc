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

" save shortcut
" normal mode
nnoremap <c-s> :w<CR>
" insert mode
inoremap <c-s> <Esc>:w<CR>
" visual mode
vnoremap <c-s> <Esc>:w<CR>

" ### rust ###
" format on save
let g:rustfmt_autosave = 1

" recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

