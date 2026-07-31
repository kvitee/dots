# Exit if fzf is not installed
if ! command -v fzf &> /dev/null; then
  return
fi

# Source fzf completions and keybindings
source <(fzf --zsh)

# Search with `fd` if installed
if command -v fd &> /dev/null; then
  local fd_flags="--strip-cwd-prefix --hidden --follow --exclude .git"

  export FZF_DEFAULT_COMMAND="fd --type f $fd_flags"
  export FZF_ALT_C_COMMAND="fd --type d $fd_flags"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# UI options and keybinding
export FZF_DEFAULT_OPTS="
  --border
  --layout=reverse
  --height=60%
  --popup=bottom,100%,60%
  --bind='ctrl-t:top'
  --bind='ctrl-h:toggle-preview'
  --bind='ctrl-u:preview-up'
  --bind='ctrl-d:preview-down'
  --bind='ctrl-U:preview-half-page-up'
  --bind='ctrl-D:preview-half-page-down'
"

# Preview files with `bat` if installed
if command -v bat &> /dev/null; then
  export FZF_CTRL_T_OPTS="--preview='bat --plain --color=always {}'"
fi

# Preview directories with `eza` if installed
if command -v eza &> /dev/null; then
  export FZF_ALT_C_OPTS="--preview='eza -TL 2 --icons=always --color=always {}'"
fi
