if [ "$(command -v fnm)" ]; then
  export PATH="${HOME}/.fnm:$PATH"
  eval "$(fnm env)"
fi