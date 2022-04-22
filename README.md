# Brian's dotfiles

This repo is mostly for me but you're welcome to make suggestions.

## Installation

### Mac:

-   Arrange icons in launchpad
-   Start terminal

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brianschmitt/dotfiles/master/install)"
```

-   Install developer tools if prompted
-   Sign into appstore while shell executes
-   Restore iterm profile

### Windows:

-   Start Powershell as admin

```shell
cd ~
Set-ExecutionPolicy Unrestricted
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install git -y

# restart powershell session to add git to path
cd ~
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/win/bootstrap.ps1
```

-   Restore any files/registry from cloud backup

### Linux:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brianschmitt/dotfiles/main/install)"
```
