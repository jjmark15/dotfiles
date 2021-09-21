if [ "$(command -v zoxide)" ]; then
  eval "$(zoxide init --hook prompt zsh)"
  alias cdi=zi
fi