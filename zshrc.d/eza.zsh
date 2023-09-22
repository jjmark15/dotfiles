if command_exists eza; then
  alias ls='eza'
  alias ll='eza -lh --git'
  alias lla='eza -lah --git'
  alias la='eza -a'
  alias lt='eza -lh --git -I ".git|target|build|node_modules|out" -T'
  alias lta='eza -lah --git -I ".git|target|build|node_modules|out" -T'
fi