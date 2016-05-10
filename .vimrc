set runtimepath+=~/.vim/bundle/vundle

set noswapfile

set number
set relativenumber

set visualbell

set encoding=utf-8
set clipboard^=unnamed

set path=**
set suffixesadd+=.cs,.js,.htm
set tags=tags;/

if !empty($CONEMUPID)
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

call vundle#rc("~/.vim/bundle")
Bundle 'gmarik/vundle'
"Bundle 'OrangeT/vim-csharp'
Bundle 'ervandew/supertab'
"Bundle 'kien/ctrlp.vim'
Bundle 'dbakker/vim-projectroot'
let g:rootmarkers = ['tags', '.git', '*.sln']
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-dispatch'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'w0ng/vim-hybrid'
colorscheme hybrid
Bundle 'morhetz/gruvbox'
colorscheme gruvbox
Bundle 'skammer/vim-css-color'
"Bundle 'PProvost/vim-ps1'
"Bundle 'tpope/vim-vinegar'
Bundle 'jphustman/SQLUtilities'
Bundle 'vim-scripts/Align'
"Bundle 'OmniSharp/omnisharp-vim'

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

" Keep cursor line set number from edges
set scrolloff=2

" Remove any trailing whitespace that is in the file
autocmd BufWritePre * :%s/\s\+$//e

" turn off some of the HTML rendering in the editor <a><b><i> etc...
let html_no_rendering=1
" properly indent html
let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"

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
    set guifont=Anonymous\ Pro:h14,Consolas:h11
endif

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

nnoremap <Leader>p :cd c:\.Projects\
nnoremap <Leader>r :ProjectRootCD<cr>
" Format doc and maintain position
nnoremap <Leader>f mzgg=G`z<cr>
nnoremap <Leader>fx :set filetype=xml<cr>:%s/></>\r</g<cr>gg=G<cr>
" generate ctags
nnoremap <leader>ct :silent !ctags<cr>
" Insert date stamp
nnoremap <leader>d "=strftime("%b %d, %Y")<cr>P
" local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

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
command! W w !sudo tee % > /dev/null

fun! InternetSearch()
    let keyword = expand("<cword>")
    let url = "https://www.duckduckgo.com/?q=" . keyword
    exec ':silent !cmd /c start ' . url
endfun
nnoremap <leader>is :call InternetSearch()<cr>

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
