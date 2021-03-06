" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/plugins.vim
call vundle#end()

" Typescript
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" Plugins' options
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Ale
nmap <silent> <C-N> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%s [%severity%]'
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'css': ['stylelint', 'prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_change_sign_column_color = 1
set completeopt=menu,menuone,preview,noselect,noinsert
" nnoremap <silent> <C-]> :ALEGoToDefinition <Enter>
hi ALEErrorSignLineNr guifg=#bf616a guibg=#52050c gui=bold
hi ALEStyleErrorSignLineNr guifg=#bf616a guibg=#52050c gui=bold
hi ALEWarningSignLineNr guifg=#ebcb8b guibg=#432d00 gui=bold
hi ALEStyleWarningSignLineNr guifg=#ebcb8b guibg=#432d00 gui=bold
hi ALEInfoSignLineNr guifg=#a3be8c guibg=#163601 gui=bold


" CoC
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>t <Plug>(coc-type-definition)
noremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
inoremap <expr> <leader>c pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Syntastic
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
" let g:syntastic_typescript_checkers = ['tscompletejob', 'tslint']
" let g:tsuquyomi_use_vimproc=1
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_signs = 1
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_cursor_column = 0
" let g:syntastic_error_symbol = "\u26D2"
" let g:syntastic_warning_symbol = "\u26A0"
" let g:syntastic_loc_list_height = 5
" let g:syntastic_filetype_map = {
"     \ "tsx": "ts" }

" highlight SyntasticErrorSign guifg=red
" highlight SyntasticWarningSign guifg=#c09c2b
" highlight SyntasticErrorLine guibg=#2f0000
" highlight SyntasticWarningLine guibg=#c09c2b
" highlight SyntasticError guibg=#2f0000
" highlight SyntasticWarning guibg=#c09c2b

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-x>"


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" JSX
let g:jsx_ext_required = 0

" CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.scss set ft=scss.css

" vim
set nocompatible
filetype off

set clipboard=unnamedplus

colors Atelier_SulphurpoolDark


set colorcolumn=120
set hidden
set history=100

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab

set autoread                " detect when a file is changed
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

set history=1000            " change history to 1000
set textwidth=120

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'

set number                  " show line numbers
set relativenumber          " show relative line numbers

set wrap                    " turn on line wrapping
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent
set autochdir               " set working directory to current

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Remove trailing whitespaces on space
autocmd BufWritePre * :%s/\s\+$//e

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

" Searching
syntax on
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
hi Search cterm=bold ctermfg=White ctermbg=DarkGray

" Key mappings
" Buffers
map <leader>ls :ls<CR>
map <leader>q :bw<CR>
map <leader>w :w<CR>

" Reload .vimrc
map <leader>r :source ~/.vimrc<CR>

" Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ack search
map <silent><leader>s :Ack!<CR>

" Fugitive
map <silent><leader>gs :Gstatus<CR>
map <silent><leader>gd :Gdiff<CR>
map <silent><leader>gc :Gcommit<CR>
map <silent><leader>ga :Gwrite<CR>
map <silent><leader>gco :Gread<CR>

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
