# Preload add-zsh-hook function
autoload -U add-zsh-hook

# Fix gpg agent passphrase prompt
function _gpg_agent_update_tty {
  gpg-connect-agent updatestartuptty /bye &> /dev/null
}
add-zsh-hook preexec _gpg_agent_update_tty
