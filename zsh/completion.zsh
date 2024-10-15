# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# ngrok
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
