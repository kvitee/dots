# Exit if fzf is not installed
if ! command -v fzf &> /dev/null; then
  return
fi

# Source fzf completions and keybindings
source <(fzf --zsh)

# Config file
export FZF_DEFAULT_OPTS_FILE="$XDG_CONFIG_HOME/fzf/config"

# Search with `fd` if installed
if command -v fd &> /dev/null; then
  local fd_flags="--strip-cwd-prefix --hidden --follow --exclude .git"

  export FZF_DEFAULT_COMMAND="fd --type f $fd_flags"
  export FZF_ALT_C_COMMAND="fd --type d $fd_flags"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# Preview files with `bat` if installed
if command -v bat &> /dev/null; then
  export FZF_CTRL_T_OPTS="--preview='bat --plain --color=always {}'"
fi

# Preview directories with `eza` if installed
if command -v eza &> /dev/null; then
  export FZF_ALT_C_OPTS="--preview='eza -TL 2 --icons=always --color=always {}'"
fi
