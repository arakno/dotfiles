# Where the magic happens.
export DOTFILES=~/.dotfiles

. ~/.dotfiles/z/z.sh
#. ~/.dotfiles/oh-my-bash/oh-my-bash.sh
. ~/.dotfiles/.bashrc-ohmybash
#. ~/.dotfiles/.oh-my-git/prompt.sh
# Arakno: Might be able to comment line below
. ~/.dotfiles/source/.env

# Source all files in "source"
function src() {
  local file
  if [[ "$1" ]]; then
    source "$DOTFILES/source/$1.sh"
  else
    for file in $DOTFILES/source/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  $DOTFILES/bin/dotfiles "$@" && src
}

# Arakno: I think this just needs to run once in a while:
# dotfiles

src
