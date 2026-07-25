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

# ---------- GnuPG ----------
# Home directory
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

# TTY
export GPG_TTY=$(tty)

# Enable ssh authentication
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# ---------- Language specific directories ----------
# RustUp directory
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Cargo directory
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Golang cache and built binaries
export GOPATH="$XDG_DATA_HOME/golang"

# Golang installation
export GOROOT="$GOPATH/sdk"
