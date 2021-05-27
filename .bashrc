#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases, maybe move to bash_aliases later
alias ls='ls --color=auto'
alias rl='cd ~; source .bashrc' # Reload .bashrc

# PS1='[\u@\h \W]\$ '
# Prompt with git branch
PS1="[\w]\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"(BRANCH)\")\$ "

# Dev command
# Type dev and a directory inside ~/Code to start vscodium in that directory
# If package.json exists with dev script it will also run npm run dev
function dev() {
  TARGET_DIRECTORY=~/Code/"$1"
  cd ${TARGET_DIRECTORY} || return
  codium .
  if [ -f "${TARGET_DIRECTORY}/package.json" ]; then
    DEV_COMMAND=$(jq ".scripts.dev" < "${TARGET_DIRECTORY}/package.json")
    if [ "$DEV_COMMAND" != "null" ]; then
      npm run dev
    fi
  fi
}

# Autocomplete dev command
# Lists directories inside ~/Code
_dev () {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls ~/Code/)" -- $cur) )
} && complete -F _dev dev

source /usr/share/nvm/init-nvm.sh
