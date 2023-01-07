New-Item -ItemType HardLink -Path $env:userprofile\.vimrc -Target $env:userprofile\dotfiles\.vimrc
New-Item -ItemType HardLink -Path $env:userprofile\.ctags -Target $env:userprofile\dotfiles\.ctags
New-Item -ItemType HardLink -Path $env:userprofile\.global_ignore -Target $env:userprofile\dotfiles\.global_ignore
New-Item -ItemType HardLink -Path $env:userprofile\.gitconfig -Target $env:userprofile\dotfiles\.gitconfig-win