cd %HOME%

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle

mklink .vimrc dotfiles\.vimrc

mklink .ctags dotfiles\.ctags

mklink .global_ignore dotfiles\.global_ignore

mklink .gitconfig dotfiles\.gitconfig

mklink .jshintrc dotfiles\.jshintrc

mklink %UserProfile%\Documents\autohotkey.ahk %UserProfile%\dotfiles\autohotkey.ahk