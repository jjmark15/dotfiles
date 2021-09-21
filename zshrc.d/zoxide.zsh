if hash zoxide 2>/dev/null; then
  eval "$(zoxide init --hook prompt zsh)"
  alias cdi=zi
fi