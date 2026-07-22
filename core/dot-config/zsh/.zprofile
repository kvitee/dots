# ---------- PATH ----------
# Keep only unique entries
typeset -U path PATH

# User local binaries
if [ -d "$HOME/.local/bin" ]; then
  path=($HOME/.local/bin $path)
fi

# Rust toolchain and built binaries
if [ -d "$CARGO_HOME" ]; then
  path=($CARGO_HOME/bin $path)
fi

# Golang built binaries
if [ -d "$GOPATH" ]; then
  path=($GOPATH/bin $path)
fi

# Golang toolchain binaries (go, gofmt)
if [ -d "$GOROOT" ]; then
  path=($GOROOT/bin $path)
fi
