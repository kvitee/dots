# GnuPG home directory
export GNUPGHOME="${XDG_CONFIG_HOME:-$HOME/.config}/gnupg"

# Node Version Manager (NVM) directory
export NVM_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/nvm"

# RustUp home directory
export RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup"

# Cargo home directory
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"

# Source cargo env file
[ -f "$CARGO_HOME/env" ] && source $CARGO_HOME/env

# Pass GPG options
export PASSWORD_STORE_GPG_OPTS="--armor --no-throw-keyids"

# Path to Oh-My-Zsh installation
export ZSH="${XDG_DATA_HOME:-$HOME/.local/share}/omz"

# History file
HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"

# Oh-My-Zsh theme
ZSH_THEME="fino"

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

# Enable autoloading NVM
zstyle ":omz:plugins:nvm" lazy yes

# Plugins list
plugins=(
  gpg-agent
  zsh-syntax-highlighting
  fzf-zsh-plugin
  nvm
  rust
)

# Run Oh-My-Zsh
source $ZSH/oh-my-zsh.sh
