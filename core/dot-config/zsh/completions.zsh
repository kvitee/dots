# Load completion system
autoload -Uz compinit

# Initialize completion system with cached metadata
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Enable interactive completion select
zstyle ":completion:*" menu select

# Case-insensitive completions
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
