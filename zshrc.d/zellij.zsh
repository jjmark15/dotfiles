export ZELLIJ_CONFIG_FILE="${HOME}/.config/zellij/config.yml"

if hash zellij 2>/dev/null; then
    alias za='zellij attach || zellij'
fi