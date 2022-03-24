addtopath() {
  if [[ ":$PATH:" == *":$1:"* ]]; then
    :
  else
    export PATH=$1:$PATH
  fi
}

export PATH="${HOME}/bin:$PATH"

alias x="exit"
alias dc="cd"
alias emptyf='cat /dev/null > '
alias shredq='shred -uz'

# ls aliases
alias la='ls -lah'
alias sl='ls'
alias ll='ls -lh'
alias l='ls'

alias pls=sudo

psaux() {
  ps aux | grep -v grep | egrep -E --color=auto "PID|${1}"
}

mkcd() {
  mkdir $1 && cd $1
}

export DOTFILES_ZSHRC_DIR="$(dirname "${BASH_SOURCE:-$0}")/zshrc.d"

priority_files=(
  nixos.zsh
  ohmyzsh.zsh
)

for file in "${priority_files[@]}"; do
  source "${DOTFILES_ZSHRC_DIR}/priority/$file"
done

for f in "${DOTFILES_ZSHRC_DIR}"/*.zsh; do
  source "$f"
done
