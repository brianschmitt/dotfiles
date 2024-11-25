mkdir ~/.ssh
cd ~/.ssh

ssh-keygen -t ed25519 -C "brianschmitt@gmail.com" -f id_personal

ssh-add id_personal

cat id_personal.pub | clip

echo "Add key (in clipboard) to github and"
timeout -1

ssh -T git@github.com

# SET /P UPDATE="Update remote on ~/dotfiles? [y/n]"
# echo
# if /i {%UPDATE%}=={y} (goto :yes)
# goto :END

# :yes
#     cd ~/dotfiles
#     git remote set-url origin git@github.com:brianschmitt/dotfiles

# :END
# exit

