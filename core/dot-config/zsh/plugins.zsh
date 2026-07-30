# Enable pcre to fix some issues of zsh-vi-mode plugin
setopt re_match_pcre

# Source all plugins from `plugins` directory
for plugin in "$ZDOTDIR/plugins"/*; do
  if [ -e "$plugin/${plugin##*/}.zsh" ]; then
    source "$plugin/${plugin##*/}.zsh"
  fi
done
