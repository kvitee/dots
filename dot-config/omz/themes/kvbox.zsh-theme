# Username color: red if root, yellow otherwise.
if [ $UID -eq 0 ]; then
  USERNAME_COLOR="red";
else
  USERNAME_COLOR="yellow";
fi

# Hostname color
HOSTNAME_COLOR="cyan";

# Current Working Directory color
CWD_COLOR="white";

# Current Working Directory (trimmed to 32 characters)
CWD="%32<...<%~%<<";

# Prompt
PROMPT="%{$fg_bold[$USERNAME_COLOR]%}%n%{$reset_color%}%{$fg[$HOSTNAME_COLOR]%}@%m:[%{$fg[$CWD_COLOR]%}$CWD%{$fg[$HOSTNAME_COLOR]%}]%(!.#.$)%{$reset_color%} "
RPROMPT="";
