runtime bundle/vim-pathogen/autoload/pathogen.vim
set nocompatible

call pathogen#infect()

let g:solarized_termtrans = 1

syntax on
" Solarized seems to handle the default correctly depending on iterm profile,
" but "vimdiff" doesn't seem to pay attention - giving dark background on
" light profile
"set background=dark
colorscheme solarized

filetype on
filetype indent on
filetype plugin on

autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2

autocmd FileType yaml set tabstop=2
autocmd FileType yaml set shiftwidth=2

set ruler
set incsearch
set showmatch
set expandtab
set shiftwidth=4
set tabstop=4
set nopaste
set colorcolumn=80

" Use one space after a period
set nojoinspaces

" Show trailing whitepace and spaces before a tab
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

set backspace=indent,eol,start

" For Vroom
set exrc
set secure

set showcmd

nnoremap <SPACE> <Nop>
let mapleader=" "

" For vim-compiler-go
" To disable calling Golang every time a buffer is saved, put into .vimrc file:
" let g:golang_onwrite = 0
" The QuickFix window can be disabled with:
" let g:golang_cwindow = 0
" Setting highlights for the lines can be disabled with:
" let g:golang_inline_highlight = 0
" Of course, standard :make command can be used as is the case with every other compiler.

" For tagbar
"nmap <F8> :TagbarToggle<CR>

" For syntastic
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" For scala
" let g:syntastic_ignore_files = ['\m\c\.h$', '\m\.sbt$']
" let g:syntastic_ignore_files = ['\m\.sbt$']
" Scala has fsc and scalac checkers--running both is pretty redundant and
" " slow. An explicit `:SyntasticCheck scalac` can always run the other.
" let g:syntastic_scala_checkers = ['fsc']

" For vim-go
"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)

" By default the mapping gd is enabled which opens the target identifier in
" current buffer. You can also open the definition/declaration in a new
" vertical, horizontal or tab for the word under your cursor:
"
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"
" Open the relevant Godoc for the word under the cursor with <leader>gd or open
" it vertically with <leader>gv
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"
" Or open the Godoc in browser
"au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"
" Show a list of interfaces which is implemented by the type under your cursor
" with <leader>s
"au FileType go nmap <Leader>s <Plug>(go-implements)
"
" Show type info for the word under your cursor with <leader>i (useful if you
" have disabled auto showing type info via g:go_auto_type_info)
"au FileType go nmap <Leader>i <Plug>(go-info)
"
" Rename the identifier under the cursor
"au FileType go nmap <Leader>e <Plug>(go-rename)
"
" More <Plug> mappings can be seen with :he go-mappings
" More advanced mappings or functions can be constructed; see :he go-commands
" For the full list of settings, see :he go-settings
"
" Disable opening browser after posting your snippet to play.golang.org:
"let g:go_play_open_browser = 0
"
" By default vim-go shows errors for the fmt command; to disable it:
"let g:go_fmt_fail_silently = 1
"
" Enable goimports to automatically insert import paths instead of gofmt:
"let g:go_fmt_command = "goimports"
"
" Disable auto fmt on save:
"let g:go_fmt_autosave = 0
"
" By default binaries are installed to $GOBIN or $GOPATH/bin. To change:
"let g:go_bin_path = expand("~/.gotools")
" or give absolute path:
"let g:go_bin_path = "/home/fatih/.mypath"
"
" By default, syntax highlighting for Functions, Methods and Structs is
" disabled. To change:
"
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
