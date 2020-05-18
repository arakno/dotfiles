# Where the magic happens.
export DOTFILES=~/.dotfiles
# Trim long dirs on prompt
PROMPT_DIRTRIM=4

function term() {
 GREEN="\[$(tput setaf 2)\]"
 RESET="\[$(tput sgr0)\]"
 PS1="${GREEN}[\u@\h \W]\${RESET}> "
}

. ~/.dotfiles/z/z.sh
#. ~/.dotfiles/oh-my-bash/oh-my-bash.sh
# Usa este Tony:
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


# Attempt to force color prompt
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
force_color_prompt=yes


# term()

# test -f ~/.bashrc && source ~/.bashrc

# src


