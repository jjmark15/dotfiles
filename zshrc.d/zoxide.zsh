if command_exists zoxide; then
  eval "$(zoxide init --hook prompt zsh)"
  alias cdi=zi
fi