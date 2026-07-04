# This overrides insternal _omz::theme::set function from lib/cli.zsh
# 
# Removes the comment after ZSH_THEME=.. and removes zshrc backup file.

# Unset original function
unset -f _omz::theme::set

# Define patched
function _omz::theme::set {
  if [[ -z "$1" ]]; then
    echo >&2 "Usage: ${(j: :)${(s.::.)0#_}} <theme>"
    return 1
  fi

  # Check that theme exists
  if [[ ! -f "$ZSH_CUSTOM/$1.zsh-theme" ]] \
    && [[ ! -f "$ZSH_CUSTOM/themes/$1.zsh-theme" ]] \
    && [[ ! -f "$ZSH/themes/$1.zsh-theme" ]]; then
    _omz::log error "%B$1%b theme not found"
    return 1
  fi

  # Enable theme in .zshrc
  local awk_script='
!set && /^[ \t]*ZSH_THEME=[^#]+.*$/ {
  set=1
  sub(/^[ \t]*ZSH_THEME=[^#]+.*$/, "ZSH_THEME=\"'$1'\"")
  print $0
  next
}

{ print $0 }

END {
  # If no ZSH_THEME= line was found, return an error
  if (!set) exit 1
}
'

  local zdot="${ZDOTDIR:-$HOME}"
  local zshrc="${${:-"${zdot}/.zshrc"}:A}"
  awk "$awk_script" "$zshrc" > "$zdot/.zshrc.new" \
  || {
    # Prepend ZSH_THEME= line to .zshrc if it doesn't exist
    cat <<EOF
ZSH_THEME="$1" # set by \`omz\`

EOF
    cat "$zdot/.zshrc"
  } > "$zdot/.zshrc.new" \
  && command cp -f "$zshrc" "$zdot/.zshrc.bck" \
  && command mv -f "$zdot/.zshrc.new" "$zshrc"

  # Exit if the new .zshrc file wasn't created correctly
  [[ $? -eq 0 ]] || {
    local ret=$?
    _omz::log error "error setting theme."
    return $ret
  }

  # Exit if the new .zshrc file has syntax errors
  if ! command zsh -n "$zdot/.zshrc"; then
    _omz::log error "broken syntax in '"${zdot/#$HOME/\~}/.zshrc"'. Rolling back changes..."
    command mv -f "$zdot/.zshrc.bck" "$zshrc"
    return 1
  fi

  # Remove backup of zshrc
  command rm -f "$zdot/.zshrc.bck"

  # Restart the zsh session if there were no errors
  _omz::log info "'$1' theme set correctly."

  # Only reload zsh if run in an interactive session
  [[ ! -o interactive ]] || _omz::reload
}
