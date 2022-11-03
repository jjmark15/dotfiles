addtopath() {
  if [[ ":$PATH:" == *":$1:"* ]]; then
    :
  else
    export PATH=$1:$PATH
  fi
}

function path_has_bins {
  if [[ -n $ZSH_VERSION ]]; then
    builtin whence -p "$1" &> /dev/null
  else  # bash:
    builtin type -P "$1" &> /dev/null
  fi
  [[ $? -ne 0 ]] && return 1
  if [[ $# -gt 1 ]]; then
    shift  # We've just checked the first one
    path_has_bins "$@"
  fi
}

export PATH="${HOME}/bin:$PATH"

alias x="exit"
alias dc="cd"
alias emptyf='truncate --no-create --size 0 '
alias shredq='shred -uz'

alias la='ls -lah'
alias sl='ls'
alias ll='ls -lh'
alias l='ls'

alias pls=sudo

psaux() {
  ps aux | grep -v grep | egrep -E --color=auto "PID|${1}"
}

mkcd() {
  mkdir "$1" && cd "$1" || exit
}

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
