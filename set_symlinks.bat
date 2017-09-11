cd %HOME%

dir .vimrc | find "<SYMLINK>"
if %errorlevel% == 1 del .vimrc -f && mklink .vimrc dotfiles\.vimrc

dir .ctags | find "<SYMLINK>"
if %errorlevel% == 1 del .ctags -f && mklink .ctags dotfiles\.ctags

dir .global_ignore | find "<SYMLINK>"
if %errorlevel% == 1 del .global_ignore -f && mklink .global_ignore dotfiles\.global_ignore

dir .gitconfig | find "<SYMLINK>"
if %errorlevel% == 1 del .gitconfig -f && mklink .gitconfig dotfiles\.gitconfig-win

dir .jshintrc | find "<SYMLINK>"
if %errorlevel% == 1 del .jshintrc -f && mklink .jshintrc dotfiles\.jshintrc

dir .hyper.js | find "<SYMLINK>"
if %errorlevel% == 1 del .hyper.js -f && mklink .hyper.js. dotfiles\.hyper.js

dir %UserProfile%\Documents\autohotkey.ahk | find "<SYMLINK>"
if %errorlevel% == 1 del %UserProfile%\Documents\autohotkey.ahk -f && mklink %UserProfile%\Documents\autohotkey.ahk %UserProfile%\dotfiles\autohotkey.ahk

dir %userprofile%\Documents\WindowsPowerShell | find "<SYMLINK>"
if %errorlevel% == 1 del %userprofile%\Documents\WindowsPowerShell -f && mklink /j %userprofile%\Documents\WindowsPowerShell %userprofile%\Powershell