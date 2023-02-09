addtopath() {
  if [[ ":$PATH:" == *":$1:"* ]]; then
    :
  else
    export PATH=$1:$PATH
  fi
}

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

export PATH="${HOME}/bin:$PATH"

export DOTFILES_ZSHRC_DIR
DOTFILES_ZSHRC_DIR="$(dirname "${BASH_SOURCE:-$0}")/zshrc.d"

priority_files=(
  nixos.zsh
  ohmyzsh.zsh
)

for file in "${priority_files[@]}"; do
  # shellcheck disable=SC1090
  source "${DOTFILES_ZSHRC_DIR}/priority/$file"
done

for f in "${DOTFILES_ZSHRC_DIR}"/*.zsh; do
  # shellcheck disable=SC1090
  source "$f"
done
