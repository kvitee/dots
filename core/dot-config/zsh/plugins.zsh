# ---------- Plugin manager ----------
# Plugins installation directory
ZSH_PLUGINS_DIR="$XDG_DATA_HOME/zsh/plugins"

# Helper function to initialize plugins
function zplug {
  # Plugin name must be in the following format:
  # `github-username/repo-name`
  if [[ ! "$1" =~ "^[a-zA-Z0-9\-]+/[a-zA-Z0-9\-]+$" ]]; then
    echo "[zplug] Invalid plugin name, skipped: $1"
    return
  fi

  # Plugin name without username
  local plugin="${1#*/}"

  # Clone plugin if not installed
  if [ ! -d "$ZSH_PLUGINS_DIR/$plugin" ]; then
    echo "[zplug] Installing $1"
    git clone --depth=1 "https://github.com/$1" "$ZSH_PLUGINS_DIR/$plugin"
  fi

  # Source plugin
  source "$ZSH_PLUGINS_DIR/$plugin/${plugin##*/}.zsh"
}

# Function to update installed plugins
function zplug_update {
  for plugin in "$ZSH_PLUGINS_DIR"/*; do
    echo "[zplug] Updating ${plugin##*/}"
    git -C "$plugin" pull --depth=1
  done
}

# ---------- Plugins ----------
zplug "zsh-users/zsh-syntax-highlighting"
zplug "jeffreytse/zsh-vi-mode"

# Remove helper function
unfunction zplug

# ---------- Plugins settings ----------

# Enable pcre to fix some issues of zsh-vi-mode plugin
setopt re_match_pcre

# Start vi-mode in Normal mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_NORMAL

# Map Ctrl-r in Insert mode to open fzf history
zvm_after_init_commands+=("zvm_bindkey viins '^R' fzf-history-widget")
