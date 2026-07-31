# Load completion system
autoload -Uz compinit compaudit

# Enable advanced patterns and regular expressions
setopt extendedglob

# zcompdump file location (cache)
local compdump_file="$XDG_CACHE_HOME/zsh/zcompdump-v$ZSH_VERSION"

# Run compaudit
local -aU insecure_dirs
insecure_dirs=(${(f@):-"$(compaudit)"})

# If audit was successful load completions
if [[ $? -eq 0 ]]; then
  # Remove compdump file if it is older than 24 hours
  if [[ -n "$compdump_file"(#qN.mh+24) ]]; then
    rm "$compdump_file"
  fi

  # Load completions from compdump file or generate new
  compinit -C -d "$compdump_file"
else
  if [[ $#insecure_dirs -ne 0 ]]; then
    echo "[compaudit] Insecure directories was found:"
    ls -ld "${(@)insecure_dirs}"
  fi
fi

# Enable interactive completion select
zstyle ":completion:*" menu select

# Case-insensitive completions
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
