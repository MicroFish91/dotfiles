# Dotfile Configs

We set the following up with a Git Bare Repo. With a bare repo, you can have nested git repos in your home directory and there will not be any issue with keeping things straight. That is the reason for the git bare repo and having an alias ("config").

## Creating

To setup, run commands from home directory (~/):

- git init --bare $HOME/.dotfiles
- alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' >> $HOME/.bashrc
- config config --local status.showUntrackedFiles no

## Cloning

- git clone --bare {url.git} $HOME/.dotfiles

## Run Script

dotfile.bash

```
git clone --bare https://github.com/MicroFish91/dotfiles.git $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

config checkout -f
config config status.showUntrackedFiles no
```

## Other Setup

- brew install zoxide
- brew install fzf

## File Descriptions

Zsh

- .zprofile (login shell) - they set the environment for login shells; they just get loaded at different times (see below). .zprofile is based on the Bash's .bash_profile while .zlogin is a derivative of CSH's .login. Since Bash was the default shell for everything up to Mojave, stick with .zprofile.
- .zshrc (interactive shell) - This sets the environment for interactive shells. This gets loaded after .zprofile. It's typically a place where you "set it and forget it" type of parameters like $PATH, $PROMPT, aliases, and functions you would like to have in both login and interactive shells.
- .zshenv (optional) - This is read first and read every time. This is where you set environment variables. I say this is optional because is geared more toward advanced users where having your $PATH, $PAGER, or $EDITOR variables may be important for things like scripts that get called by launchd. Those run under a non-interactive shell so anything in .zprofile or .zshrc won't get loaded.
- .zlogin (login shell - basically the same as .zprofile)
- .zlogout (optional) - This is read when you log out of a session and is very good for cleaning things up when you leave

Bash Shell

- .bash_profile (login shell)
- .bashrc (interactive shell)
- .bash_login (login shell)
- .bash_logout (when the shell exits)

## Resources

- zsh: https://zsh.sourceforge.io/Doc/Release/Files.html#Files
  https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
- template inspo: https://www.youtube.com/watch?v=bTLYiNvRIVI&list=PLnbVXUq1oFVk_VzhxrjKL2ILp_jXs89d-&index=68&t=904s&ab_channel=chris%40machine
- template inspo: https://github.com/Mach-OS/Machfiles
- zoxide: https://github.com/ajeetdsouza/zoxide
- fzf: https://github.com/junegunn/fzf#installation
- .rc file not loading: https://stackoverflow.com/questions/51820921/vscode-integrated-terminal-doesnt-load-bashrc-or-bash-profile
