if command_exists brew; then
  quick-update-brew() {
    brew update >/dev/null && brew upgrade
  }
fi

LINUX_BREW_BIN_DIR="/home/linuxbrew/.linuxbrew/bin"

if [ -d $LINUX_BREW_BIN_DIR ]; then
  eval "$($LINUX_BREW_BIN_DIR/brew shellenv)"

  quick-update-brew() {
    brew update >/dev/null && brew upgrade
  }
fi
