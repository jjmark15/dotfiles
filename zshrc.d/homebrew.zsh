if [ "$(command -v brew)" ]; then
  quick-update-brew() {
    brew update >/dev/null && brew upgrade
  }
fi

