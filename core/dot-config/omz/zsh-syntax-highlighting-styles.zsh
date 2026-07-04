# Activate brackets highlighter
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets)

# General
ZSH_HIGHLIGHT_STYLES[default]="fg=white"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,underline"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[comment]="fg=black,bold,underline"

# Commands
ZSH_HIGHLIGHT_STYLES[precommand]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[command]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[function]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=green,underline"

# Aliases
ZSH_HIGHLIGHT_STYLES[alias]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=green,underline"
ZSH_HIGHLIGHT_STYLES[global-alias]="fg=cyan,underline"

# Separators, redirections, pipes..
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[assign]="fg=magenta"

# Options
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=cyan"

# Arguments
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]="fg=yellow,underline"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]="fg=yellow,underline"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]="fg=yellow,underline"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=blue"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=cyan"

# Substitutions
ZSH_HIGHLIGHT_STYLES[process-substitution]="none"
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[command-substitution]="none"
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]="fg=magenta"

# File descriptors
ZSH_HIGHLIGHT_STYLES[named-fd]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[numeric-fd]="fg=cyan"

# Paths
ZSH_HIGHLIGHT_STYLES[path]="fg=white,underline"
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=white"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=cyan,underline"
ZSH_HIGHLIGHT_STYLES[autodirectory]="fg=cyan,bold,underline"

# Brackets
ZSH_HIGHLIGHT_STYLES[bracket-error]="fg=red,bold,underline"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=blue"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=green"
ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[bracket-level-5]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]="bold,underline"

# Not styled
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="none"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]="none"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]="none"
