# Set type of styles array to associative array (key/value)
typeset -A ZSH_HIGHLIGHT_STYLES

# Activate brackets highlighter
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets)

# Helper function to set highlight style
function hl {
  ZSH_HIGHLIGHT_STYLES[$1]=$2
}

## General
# builtin, noglob
hl "precommand"    "fg=#59c2ff"
# ls, cat
hl "command"       "fg=#aad94c"
# cd, echo, logout
hl "builtin"       "fg=#e6c08a,bold"
# hl
hl "function"      "fg=#ffb454"
# if, for
hl "reserved-word" "fg=#ff8f40,bold"
# #Comment
hl "comment"       "fg=#5a6673"
# Anything else
hl "arg0"          "fg=#e6c08a,bold,underline"
# Unknown
hl "unknown-token" "fg=#d95757,bold,underline"

## Aliases
hl "alias"        "fg=#aad94c"
hl "suffix-alias" "fg=#39bae6,underline"
hl "global-alias" "fg=#95e6cb,bold"

## Operators
# ;, |
hl "commandseparator" "fg=#f29668"
# >, <
hl "redirection"      "fg=#f29668"
# VAR=value
hl "assign"           "fg=#f29668"

## Options/flags
# -o
hl "single-hyphen-option" "fg=#73b8ff"
# --option
hl "double-hyphen-option" "fg=#73b8ff"

## Arguments
# 'arg'
hl "single-quoted-argument"          "fg=#f6b18f"
hl "single-quoted-argument-unclosed" "fg=#f6b18f,underline"
# "arg"
hl "double-quoted-argument"          "fg=#ffad7a"
hl "double-quoted-argument-unclosed" "fg=#ffad7a,underline"
# $'arg'
hl "dollar-quoted-argument"          "fg=#dab8ff"
hl "dollar-quoted-argument-unclosed" "fg=#dab8ff,underline"
# "$VAR"
hl "dollar-double-quoted-argument"   "fg=#d2a6ff"
# "\n" and $'\n'
hl "back-double-quoted-argument"     "fg=#c589fe"
hl "back-dollar-quoted-argument"     "fg=#c589fe"

## Substitutions
# $(command)
hl "command-substitution"           "none"
hl "command-substitution-delimiter" "fg=#ff8f40"
# <(command)
hl "process-substitution"           "none"
hl "process-substitution-delimiter" "fg=#f67e1a"
# `command`
hl "back-quoted-argument"           "fg=#e5730e"
hl "back-quoted-argument-unclosed"  "fg=#e5730e,underline"
hl "back-quoted-argument-delimiter" "none"
# $((2+3))
hl "arithmetic-expansion"           "fg=#8ad5bc"

## File descriptors
hl "named-fd"   "fg=#74b59f"
hl "numeric-fd" "fg=#74b59f"

## Paths
# Path nodes
hl "path"                      "fg=#e6c08a,underline"
hl "path_prefix"               "fg=#e6c08a"
# Path separator (/)
hl "path_pathseparator"        "fg=#d5b07c,underline"
hl "path_pathseparator_prefix" "fg=#d5b07c"
# Glob star (*)
hl "globbing"                  "fg=#95e6cb,underline"

## Brackets
# Unclosed brackets
hl "bracket-error"          "fg=#d95757,bold,underline"
# Pair of bracket under cursor
hl "cursor-matchingbracket" "bold,underline"
# Nest level
hl "bracket-level-1"        "fg=#d5b07c"
hl "bracket-level-2"        "fg=#f0a33a"
hl "bracket-level-3"        "fg=#9cc845"
hl "bracket-level-4"        "fg=#7fc5ae"
hl "bracket-level-5"        "fg=#4cc9f5"

# Remove helper function
unfunction hl
