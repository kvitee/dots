# Make and remove directories
alias md="mkdir -p"
alias rd="rmdir -p"
alias rdr="rm -rf"

# Base ls and tree commands
local ls_cmd="ls --group-directories-first -h"
local tree_cmd="${ls_cmd}1R"

# Base eza flags
local eza_flags="--group-directories-first --smart-group --git --icons=auto -g"

# Use standard tree if installed
if command -v tree > /dev/null; then
  tree_cmd="tree --dirsfirst -A"
fi

# Use eza both for ls and tree
if command -v eza > /dev/null; then
  ls_cmd="eza ${eza_flags}"
  tree_cmd=${ls_cmd}T
fi

# List files and directories
alias l=$ls_cmd
alias la=${ls_cmd}A
alias ll=${ls_cmd}l
alias lla=${ls_cmd}lA
alias lD=${ls_cmd}ld
alias ldot="${ls_cmd}ld .*"
alias lt=${tree_cmd}
alias lta=${tree_cmd}a
alias ltn=${tree_cmd}L
alias ltan=${tree_cmd}aL
