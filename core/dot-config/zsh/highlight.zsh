# Activate brackets highlighter
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets)

# Helper function to set highlight style
function highlight {
  ZSH_HIGHLIGHT_STYLES[$1]=$2
}

# General
highlight default fg=white
highlight unknown-token fg=red,underline
highlight reserved-word fg=magenta,bold
highlight comment fg=black,bold,underline

# Commands
highlight precommand fg=magenta
highlight command fg=green,bold
highlight builtin fg=green,bold
highlight function fg=yellow,bold
highlight arg0 fg=green,underline

# Aliases
highlight alias fg=green,bold
highlight suffix-alias fg=green,underline
highlight global-alias fg=cyan,underline

# Separators, redirections, pipes..
highlight commandseparator fg=magenta
highlight redirection fg=magenta
highlight assign fg=magenta

# Options
highlight single-hyphen-option fg=cyan
highlight double-hyphen-option fg=cyan

# Arguments
highlight single-quoted-argument fg=yellow
highlight single-quoted-argument-unclosed fg=yellow,underline
highlight double-quoted-argument fg=yellow
highlight double-quoted-argument-unclosed fg=yellow,underline
highlight dollar-quoted-argument fg=yellow
highlight dollar-quoted-argument-unclosed fg=yellow,underline
highlight dollar-double-quoted-argument fg=blue
highlight back-double-quoted-argument fg=cyan
highlight back-dollar-quoted-argument fg=cyan

# Substitutions
highlight process-substitution none
highlight process-substitution-delimiter fg=magenta
highlight command-substitution none
highlight command-substitution-delimiter fg=cyan
highlight arithmetic-expansion fg=magenta

# File descriptors
highlight named-fd fg=cyan
highlight numeric-fd fg=cyan

# Paths
highlight path fg=white,underline
highlight path_prefix fg=white
highlight globbing fg=cyan,underline
highlight autodirectory fg=cyan,bold,underline

# Brackets
highlight bracket-error fg=red,bold,underline
highlight bracket-level-1 fg=blue
highlight bracket-level-2 fg=cyan
highlight bracket-level-3 fg=green
highlight bracket-level-4 fg=yellow
highlight bracket-level-5 fg=magenta
highlight cursor-matchingbracket bold,underline

# Not styled
highlight back-quoted-argument none
highlight back-quoted-argument-unclosed none
highlight back-quoted-argument-delimiter none

# Remove helper function
unfunction highlight
