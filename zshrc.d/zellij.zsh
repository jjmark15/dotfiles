if [ -f "${HOME}/.config/zellij/config.yml" ]; then
  export ZELLIJ_CONFIG_FILE="${HOME}/.config/zellij/config.yml"
fi

if hash zellij 2>/dev/null; then
    alias za='zellij attach || zellij'
fi