mv "C:\Program Files (x86)\Gow\bin\ssh.bat" "C:\Program Files (x86)\Gow\bin\ssh2.bat"

cd %HOME%/.ssh

ssh-keygen -t rsa -C "brianschmitt@gmail.com" -f github_rsa

ssh-add github_rsa

clip < github_rsa.pub

echo "Add key (in clipboard) to github and"
timeout -1

ssh -T git@github.com

SET /P UPDATE="Update remote on ~/dotfiles? [y/n]"
echo
if /i {%UPDATE%}=={y} (goto :yes)
goto :END

:yes
    cd %HOME%/dotfiles
    git remote set-url origin git@github.com:brianschmitt/dotfiles

:END
exit

