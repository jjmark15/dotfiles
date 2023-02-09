if [ -f "${HOME}/.config/zellij/config.kdl" ]; then
  export ZELLIJ_CONFIG_FILE="${HOME}/.config/zellij/config.kdl"
fi

if command_exists zellij; then
    alias za='zellij attach --create'
    alias zax='zellij attach --create && exit'

    function zr () { zellij run --name "$*" -- zsh -ic "$*";}
    function zrf () { zellij run --name "$*" --floating -- zsh -ic "$*";}
    function ze () { zellij edit "$*";}
    function zed () { zellij edit -d down "$*";}
    function zer () { zellij edit -d right "$*";}
    function zef () { zellij edit --floating "$*";}
fi
