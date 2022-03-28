# Allow double-star globs to match files and recursive paths
shopt -s globstar
# Enable extended globbing: !(foo), ?(bar|baz)...
shopt -s extglob
# Append history to $HISTFILE rather than overwriting it
shopt -s histappend
# If history expansion fails, reload the command to try again
shopt -s histreedit

# Correct small errors in directory names during completion
shopt -s dirspell

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
