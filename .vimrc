set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle/vundle

set noswapfile

set number
set relativenumber

set visualbell

set encoding=utf-8
set clipboard^=unnamed

set path=**
set tags=tags;/

call vundle#rc("~/.vim/bundle")
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'dbakker/vim-projectroot'
let g:rootmarkers = ['tags', '.git', '*.sln']
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'bling/vim-airline'
let g:airline_enable_syntastic=1
Bundle 'nanotech/jellybeans.vim'
colorscheme jellybeans
" colorscheme slate
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_default_to_last=1
let g:session_directory='~\.vim\sessions'
set sessionoptions-=help

let g:netrw_winsize=20

" dont fold by default
set nofoldenable

" Syntax Highlighting options
filetype plugin indent on
syntax enable
syntax on

" Keep cursor line set number from edges
set so=7

" Remove any trailing whitespace that is in the file
autocmd BufWritePre * :%s/\s\+$//e

"turn off some of the HTML rendering in the editor <a><b><i> etc...
let html_no_rendering=1

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

set wildmenu
set wildmode=full "list:longest
set wildignore=*.csproj,*.designer.cs

set completeopt=longest,menuone,preview

set backspace=indent,eol,start

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
set incsearch
" Highlight things that we find with the search
set hlsearch

set cursorline

" allow unsaved background buffers and remember marks/undo for them
set hidden
" hack for using hidden and --remote-server
if bufname('%') == ''
  set bufhidden=wipe
endif

set nowrap

if has("gui_running")
 set guioptions=egm
 set guifont=Droid_Sans_Mono_Slashed_for_Pow:h12,Consolas:h11
endif

" remap jj to escape in insert mode
inoremap jj <Esc>

" start remote edit
nnoremap <Leader>p :cd c:\.Projects\
nnoremap <Leader>r :ProjectRootCD<cr>
" Format doc and maintain position
nnoremap <Leader>f mzgg=G`z<cr>
" generate ctags
nnoremap <leader>ct :!ctags&<cr><cr>
" session stuff
nnoremap <leader>s :SaveSession
nnoremap <leader>o :OpenSession

" navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap > ><CR>gv
vnoremap < <<CR>gv

" Swap ; and : Convenient.
nnoremap ; :
nnoremap : ;

" sudo write
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

"Always show statusline
set laststatus=2
