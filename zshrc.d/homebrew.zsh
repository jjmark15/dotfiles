if hash brew 2>/dev/null; then
  quick-update-brew() {
    brew update >/dev/null && brew upgrade
  }
fi

