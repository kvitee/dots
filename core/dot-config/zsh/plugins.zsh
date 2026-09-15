# Enable pcre to fix some issues of zsh-vi-mode plugin
setopt re_match_pcre

# Source all plugins from `plugins` directory
for plugin in "$ZDOTDIR/plugins"/*; do
  if [ -e "$plugin/${plugin##*/}.zsh" ]; then
    source "$plugin/${plugin##*/}.zsh"
  fi
done

# Start vi-mode in Normal mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_NORMAL

# Map Ctrl-r in Insert mode to open fzf history
zvm_after_init_commands+=("zvm_bindkey viins '^R' fzf-history-widget")
