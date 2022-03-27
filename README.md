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
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```
