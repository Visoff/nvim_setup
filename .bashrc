# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'

source ble.sh/out/ble.sh

function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "Directory already exists"
  else
    mkdir $1 && cd $1
  fi
}

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# deno
export DENO_INSTALL="/root/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"



alias ..="cd ../"
alias nv="nvim"
alias nvd="nvim ."

alias cdh="cd ~"


FMT_BOLD="\e[1m"
FMT_RESET="\e[0m"
FMT_UNBOLD="\e[21m"
FG_BLACK="\e[30m"
FG_BLUE="\e[34m"
FG_CYAN="\e[36m"
FG_GREEN="\e[32m"
FG_MAGENTA="\e[35m"
FG_RED="\e[31m"
FG_WHITE="\e[97m"
BG_BLUE="\e[44m"
BG_GREEN="\e[42m"
BG_MAGENTA="\e[45m"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1

export PS1=\
"\n\[${BG_GREEN}\] \[${FG_RED}\] \[${FG_BLACK}\]\u \[${FG_GREEN}${BG_BLUE}\] "\
"\[${FG_BLACK}\]\w \[${FMT_RESET}${FG_BLUE}\]"\
'$(__git_ps1 "\[${BG_MAGENTA}\] \[${FG_WHITE}\] %s \[${FMT_RESET}${FG_MAGENTA}\]")'\
"\n \[${FG_GREEN}\]╰ \[${FG_CYAN}\]\$ \[${FMT_RESET}\]"

. "$HOME/.cargo/env"




if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi
