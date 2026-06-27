alias md="mkdir -p"
alias rd=rmdir

LS="ls --group-directories-first -h"
TREE=${LS}1R

EZA_PARAMS="--no-permissions --smart-group --group-directories-first --git --icons=auto -hog"

if command -v tree > /dev/null; then
  TREE="tree --dirsfirst -A"
fi

if command -v eza > /dev/null; then
  LS="eza ${EZA_PARAMS}"
  TREE=${LS}T
fi

alias l=$LS
alias la=${LS}A
alias ll=${LS}l
alias lla=${LS}lA
alias ldot="${LS}ld .*"
alias lt=${TREE}
alias lta=${TREE}a
alias ltn=${TREE}L
alias ltan=${TREE}aL
