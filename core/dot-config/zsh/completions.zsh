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
  # Load from cache if compdump file exists and generated in the last 24 hours,
  # else (re)generate it.
  if [[ -e "$compdump_file" && -n "$compdump_file"(#qN.mh-24) ]]; then
    compinit -C -d "$compdump_file"
  else
    compinit -d "$compdump_file"
  fi
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
