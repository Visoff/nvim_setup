function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "Directory already exists"
  else
    mkdir $1 && cd $1
  fi
}

alias ..="cd ../"
alias nv="nvim"
alias nvd="nvim ."

alias cdh="cd ~"

