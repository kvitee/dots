# ---------- History ----------
# History file
HISTFILE="$XDG_STATE_HOME/zsh/history"

# History size
HISTSIZE=50000
SAVEHIST=$HISTSIZE

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

# ---------- Modules ----------
# Completions
source "$ZDOTDIR/completions.zsh"

# Prompt
source "$ZDOTDIR/prompt.zsh"
