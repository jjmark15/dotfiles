if [ -f "${HOME}/.config/zellij/config.kdl" ]; then
  export ZELLIJ_CONFIG_FILE="${HOME}/.config/zellij/config.kdl"
fi

if [ "$(command -v zellij)" ]; then
    alias za='zellij attach --create'
    alias zax='zellij attach --create && exit'
fi
