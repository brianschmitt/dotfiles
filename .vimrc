" Download vim-plug if it's not already present
" if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"endif

set noswapfile

set number
set relativenumber

set visualbell

set encoding=utf-8
set clipboard^=unnamed

set path=**
set suffixesadd+=.cs,.js,.htm
set tags=tags;/

call plug#begin()
    Plug 'scrooloose/syntastic'
    Plug 'arcticicestudio/nord-vim'
    Plug 'sheerun/vim-polyglot'
call plug#end()

let g:rootmarkers = ['tags', '.git', '*.sln']
colorscheme nord

set background=dark
let g:netrw_winsize=20
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4

set nofoldenable

" Syntax Highlighting options
filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete

set scrolloff=2 " Keep cursor line set number from edges

autocmd BufWritePre * :%s/\s\+$//e " Remove any trailing whitespace that is in the file

let html_no_rendering=1 " turn off some of the HTML rendering in the editor <a><b><i> etc...
let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script" " properly indent html

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

set wildmenu
set wildmode=list:full
set wildignore=*.csproj,*.designer.cs,*.sln,*.Master,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*
set wildignore+=tags

set completeopt=longest,menuone,preview

set backspace=indent,eol,start

set ignorecase smartcase " make searches case-sensitive only if they contain upper-case characters
set incsearch
set hlsearch " Highlight things that we find with the search

set cursorline

set hidden " allow unsaved background buffers and remember marks/undo for them

if bufname('%') == '' " hack for using hidden and --remote-server
    set bufhidden=wipe
endif

set nowrap

if has("gui_running")
    set guioptions=egm
    set guifont=FiraCode\ Nerd\ Font:h16,Consolas:h16
endif

if $TERM_PROGRAM =~ "iTerm" " Change cursor shape between insert and normal mode in iTerm2.app
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


nnoremap <Leader>f mzgg=G`z<cr> " Format doc and maintain position
nnoremap <Leader>fx :set filetype=xml<cr>:%s/></>\r</g<cr>gg=G<cr>
nnoremap <leader>ct :silent !ctags<cr> " generate ctags
nnoremap <leader>d "=strftime("%b %d, %Y")<cr>P " Insert date stamp
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left> " local replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left> " global replace

" navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap > ><CR>gv
vnoremap < <<CR>gv

" Swap ; and :
nnoremap ; :
nnoremap : ;

command! W w !sudo tee % > /dev/null " sudo write

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

autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning "recalculate the tab warning flag when idle and after writing

"return '[&et]' if &expandtab is set wrong
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
