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

-   Start Powershell

```shell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
winget install git.git

# restart powershell session to add git to path
git clone https://github.com/brianschmitt/dotfiles.git
. ~/dotfiles/win/bootstrap.ps1
```

-   Restore any files/registry from cloud backup

### Linux:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brianschmitt/dotfiles/main/install)"
```
