if [ -f "${HOME}/.config/zellij/config.yml" ]; then
  export ZELLIJ_CONFIG_FILE="${HOME}/.config/zellij/config.yml"
fi

if [ "$(command -v zellij)" ]; then
    alias za='zellij attach --create'
    alias zax='zellij attach --create && exit'
fi
