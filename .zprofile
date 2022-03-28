if [ -r ~/.zshrc ]; then
  . ~/.zshrc
fi

export PATH=$PATH:/applications/Postgres.app/contents/Versions/13/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PS1='[\w]$ '

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh