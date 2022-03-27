# Dotfile Configs

We set the following up with a Git Bare Repo. With a bare repo, you can have nested git repos in your home directory and there will not be any issue with keeping things straight. That is the reason for the git bare repo and having an alias ("config").

## Creating

To setup, run commands from home directory (~/):

- git init --bare $HOME/.dotfiles
- alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' >> $HOME/.bashrc
- config config --local status.showUntrackedFiles no

## Cloning

- git clone --bare {url.git} $HOME/.dotfiles
