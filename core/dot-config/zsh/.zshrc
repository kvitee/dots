# ---------- History ----------
# History file
HISTFILE="$XDG_STATE_HOME/zsh/history"

# Share history across all shells
setopt share_history

# Remove trailing spaces
setopt hist_ignore_space

# Prevent duplicates
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups

# ---------- Pass password manager ----------
# Vault directory
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

# GPG options
export PASSWORD_STORE_GPG_OPTS="--armor --no-throw-keyids"

# Path to Oh-My-Zsh installation
export ZSH="${XDG_DATA_HOME:-$HOME/.local/share}/omz"

# Oh-My-Zsh theme
ZSH_THEME="tiny"

# Set Oh-My-Zsh cache directory and ensure it exists
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/omz"
mkdir -p $ZSH_CACHE_DIR

# Complecion cache file (.zcompdump)
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Custom path for fzf binary
FZF_PATH="${XDG_DATA_HOME:-$HOME/.local/share}/fzf"

# Zsh custom directory
ZSH_CUSTOM="${XDG_CONFIG_HOME:-$HOME/.config}/omz"

# Plugins list
plugins=(
  gpg-agent
  zsh-syntax-highlighting
)

# Run Oh-My-Zsh
source $ZSH/oh-my-zsh.sh
