set nocompatible	" Safest to just set it
set nobackup       	" no backup files
set nowritebackup  	" only in case you don't want a backup file while editing
set noswapfile
set relativenumber
set noerrorbells	" turn off the beep
set visualbell		" flash the screen since we switched off the beep
set t_vb=			" required for no beep/flash
set encoding=utf-8
set clipboard+=unnamed

set tags=tags;/
filetype off 

set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'brianschmitt/TFS'
Bundle 'ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on



autocmd BufEnter * silent! lcd %:p:h 		" Automatically cd into the directory that the file is in
"autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif  " Remove any trailing whitespace that is in the file

set showcmd 		" This shows what you are typing as a command

set foldnestmax=3 	" deepest fold is 3 levels
set nofoldenable 	" dont fold by default

" Syntax Highlighting options
filetype on
filetype plugin indent on
syntax enable
syntax on

set grepprg=grep\ -nH\ $*

set autoindent

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

if version >= 700
	" Use english for spellchecking, but don't spellcheck by default
	set spl=en spell
	set nospell
endif

set wildmenu
set wildmode=list:longest

set mouse=a			" Enable mouse support in console

set backspace=indent,eol,start

set ignorecase
set smartcase

inoremap jj <Esc>	" remap jj to escape in insert mode

set incsearch		" Incremental searching
set hlsearch		" Highlight things that we find with the search
"set cul			" Highlight current line - Disabled to work in VS2010

set nohidden		" When I close a tab, remove the buffer

highlight MatchParen ctermbg=4		" Set off the other paren

if has("gui_running")
   colorscheme obsidian2
   
   set guioptions-=T	" Remove Toolbar
   "set guifont=Consolas:h12
   set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
else
   colorscheme obsidian2
endif

if has("gui_running")
  function! ScreenFilename()
    if has('win32')
      return $HOME.'\_vimsize'
    else
      return $HOME.'/.vimsize'
    endif
  endfunction

  function! ScreenRestore()
    " Restore window size (columns and lines) and position
    " from values stored in vimsize file.
    " Must set font first so columns and lines are based on font size.
    let f = ScreenFilename()
    if has("gui_running") && g:screen_size_restore_pos && filereadable(f)
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      for line in readfile(f)
        let sizepos = split(line)
        if len(sizepos) == 5 && sizepos[0] == vim_instance
          silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          return
        endif
      endfor
    endif
  endfunction

  function! ScreenSave()
    " Save window size and position.
    if has("gui_running") && g:screen_size_restore_pos
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      let data = vim_instance . ' ' . &columns . ' ' . &lines . ' ' .
            \ (getwinposx()<0?0:getwinposx()) . ' ' .
            \ (getwinposy()<0?0:getwinposy())
      let f = ScreenFilename()
      if filereadable(f)
        let lines = readfile(f)
        call filter(lines, "v:val !~ '^" . vim_instance . "\\>'")
        call add(lines, data)
      else
        let lines = [data]
      endif
      call writefile(lines, f)
    endif
  endfunction

  if !exists('g:screen_size_restore_pos')
    let g:screen_size_restore_pos = 1
  endif
  if !exists('g:screen_size_by_vim_instance')
    let g:screen_size_by_vim_instance = 1
  endif
  autocmd VimEnter * if g:screen_size_restore_pos == 1 | call ScreenRestore() | endif
  autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call ScreenSave() | endif
endif

nnoremap <space> za		" Space will toggle folds!

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set completeopt=longest,menuone,preview

" Making autocompletion a little more friendly
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

set wrap!

let g:Powerline_symbols = 'fancy'
set laststatus=2