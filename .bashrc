#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

FMT_RESET="\e[0m"
FG_WHITE="\e[97m"
FG_BLACK="\[\e[30m\]"

BG_CYAN="\[\e[46m\]"
FG_CYAN="\[\e[36m\]"
BG_BLUE="\e[44m"
FG_BLUE="\e[34m"
BG_MAGENTA="\e[45m"
FG_MAGENTA="\e[35m"
BG_GREEN="\[\e[42m\]"
FG_GREEN="\[\e[32m\]"

PS1=""
PS1+="${BG_MAGENTA}${FG_WHITE}"
PS1+=" \u "
PS1+="${FMT_RESET}${FG_MAGENTA}"

PS1+="${BG_BLUE}${FG_WHITE}"
PS1+=" \w "
PS1+="${FMT_RESET}${FG_BLUE}"

PS1+="\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \""
PS1+="${BG_GREEN}${FG_WHITE}"
PS1+=" BRANCH "
PS1+="${FMT_RESET}${FG_GREEN}\")"

PS1+="${FMT_RESET} \n \$ "

#PS1="[\W]\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"(BRANCH)\")\$ "

source /usr/share/nvm/init-nvm.sh
