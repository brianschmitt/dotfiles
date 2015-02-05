cd %HOME%

dir .vimrc | find "<SYMLINK>"
if %errorlevel% == 1 rm .vimrc -f && mklink .vimrc dotfiles\.vimrc

dir .ctags | find "<SYMLINK>"
if %errorlevel% == 1 rm .ctags -f && mklink .ctags dotfiles\.ctags

dir .global_ignore | find "<SYMLINK>"
if %errorlevel% == 1 rm .global_ignore -f && mklink .global_ignore dotfiles\.global_ignore

dir .gitconfig | find "<SYMLINK>"
if %errorlevel% == 1 rm .gitconfig -f && mklink .gitconfig dotfiles\.gitconfig

dir .jshintrc | find "<SYMLINK>"
if %errorlevel% == 1 rm .jshintrc -f && mklink .jshintrc dotfiles\.jshintrc

dir %UserProfile%\Documents\autohotkey.ahk | find "<SYMLINK>"
if %errorlevel% == 1 rm %UserProfile%\Documents\autohotkey.ahk -f && mklink %UserProfile%\Documents\autohotkey.ahk %UserProfile%\dotfiles\autohotkey.ahk
