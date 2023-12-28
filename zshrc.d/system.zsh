function kill-port() {
  PORT=$1

  if [ -z "$PORT" ]; then
    echo "PORT is a mandatory argument"
    return
  fi

  PID="$(lsof -t -i:"${PORT}")"
  if [ -z "$PID" ]; then
    echo "No processes found on port ${PORT}"
    return
  fi

  kill -9 "$PID"
}

psaux() {
  ps aux | grep -v grep | egrep -E --color=auto "PID|${1}"
}

mkcd() {
  mkdir "$1" && cd "$1" || exit
}

alias x="exit"
alias dc="cd"
alias emptyf='truncate --no-create --size 0 '
alias shredq='shred -uz'

alias la='ls -lah'
alias sl='ls'
alias ll='ls -lh'
alias l='ls'

alias pls=sudo

alias bootbios="systemctl reboot --firmware-setup"