# Source all plugins from `plugins` directory
for plugin in "$ZDOTDIR/plugins"/*; do
  if [ -e "$plugin/${plugin##*/}.zsh" ]; then
    source "$plugin/${plugin##*/}.zsh"
  fi
done
