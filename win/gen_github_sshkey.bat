cd ~/.ssh

ssh-keygen -t rsa -C "brianschmitt@gmail.com" -f github_rsa

ssh-add github_rsa

cat github_rsa.pub | clip

echo "Add key (in clipboard) to github and"
timeout -1

ssh -T git@github.com

SET /P UPDATE="Update remote on ~/dotfiles? [y/n]"
echo
if /i {%UPDATE%}=={y} (goto :yes)
goto :END

:yes
    cd ~/dotfiles
    git remote set-url origin git@github.com:brianschmitt/dotfiles

:END
exit

