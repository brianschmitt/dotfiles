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
Bundle 'nanotech/jellybeans.vim'
colorscheme jellybeans
" colorscheme slate
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_default_to_last=1
let g:session_directory='~\.vim\sessions'
set sessionoptions-=help,blank,options

let g:netrw_winsize=20

" dont fold by default
set nofoldenable

" Syntax Highlighting options
filetype plugin indent on
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
command W w !sudo tee % > /dev/null

"Always show statusline
set laststatus=2
set statusline =%#Constant#\[%n]\ %*      "buffer number
set statusline +=%#Statement#
set statusline +=\[%t]\ %*                 "full path
set statusline +=%#Error#%h%w%m%r          "file flags [help, RO, modified]
set statusline +=%{StatuslineTabWarning()}
set statusline +=%{SyntasticStatuslineFlag()}%* " Syntastic Syntax Checking
set statusline +=%=%*                      "right align remaining
set statusline +=%#Type#\ [%{&ff}:         "begin section & file format
set statusline +=%{&encoding}]             "file encoding
set statusline +=%y%*                      "file type & end section
set statusline +=%#Constant#\ %l:          "current line
set statusline +=%v%*                      "virtual column number
set statusline +=%#Statement#/%L\ %*       "total lines

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction
