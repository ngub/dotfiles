" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/plugins.vim
call vundle#end()

" Plugins' options
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Ale
" let g:ale_sign_error = '⨉'
" let g:ale_sign_warning = '⚠'
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '%s [%severity%]'

" Syntastic
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_cursor_column = 0
let g:syntastic_error_symbol = "\u26D2"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_loc_list_height = 5
let g:syntastic_filetype_map = {
    \ "tsx": "ts" }

highlight SyntasticErrorSign guifg=red
highlight SyntasticWarningSign guifg=#c09c2b
highlight SyntasticErrorLine guibg=#2f0000
highlight SyntasticWarningLine guibg=#c09c2b
highlight SyntasticError guibg=#2f0000
highlight SyntasticWarning guibg=#c09c2b

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

" Typescript
autocmd BufEnter *.tsx set filetype=typescript

" vim
set nocompatible
filetype off

set colorcolumn=80
set hidden
set history=100

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab

set autoread                " detect when a file is changed

set history=1000            " change history to 1000
set textwidth=80

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

set number                  " show line numbers
set relativenumber          " show relative line numbers

set wrap                    " turn on line wrapping
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Remove trailing whitespaces on space
autocmd BufWritePre * :%s/\s\+$//e

" Reload .vimrc
map <leader>s :source ~/.vimrc<CR>

" Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

" Searching
nnoremap <silent> <space> :nohlsearch<Bar>:echo<CR>
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros
set path=**/*

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink
