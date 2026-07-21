# Prepend user binaries directories to PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Default editor
export EDITOR="$(command -v vim)"
