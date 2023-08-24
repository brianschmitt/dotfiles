$files = '.vimrc','.ctags','.global_ignore'

foreach ($file in $files) {
    $hardlink = (Get-ChildItem $env:userprofile\$file -ErrorAction SilentlyContinue).LinkType -eq "HardLink"
    if (!$hardlink) {
        Remove-Item $env:userprofile\$file -ErrorAction SilentlyContinue
        New-Item -ItemType HardLink -Path $env:userprofile\$file -Target $env:userprofile\dotfiles\$file
    }

}

# map this to my win gitconfig file
New-Item -ItemType HardLink -Path $env:userprofile\.gitconfig -Target $env:userprofile\dotfiles\.gitconfig-win
New-Item -ItemType HardLink -Path $env:userprofile\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Target $env:userprofile\dotfiles\win\winterminalsettings.json