if [ "$(command -v apt)" ]; then
  quick-update-apt() {
      sudo apt update && sudo apt -y full-upgrade && sudo apt autoremove -y
  }
fi