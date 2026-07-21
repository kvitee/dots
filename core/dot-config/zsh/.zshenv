# ---------- XDG base directories ----------
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# ---------- Default Editors ----------
# Vim as "terminal" editor and Neovim as "graphical")
export EDITOR=$(command -v vim)
export VISUAL=$(command -v nvim)

# Vim for both if Neovim is not installed
: ${VISUAL:=$EDITOR}

# ---------- GPG ----------
export GPG_TTY=$(tty)
