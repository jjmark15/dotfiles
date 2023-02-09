if command_exists fnm; then
  export PATH="${HOME}/.fnm:$PATH"
  eval "$(fnm env)"
fi